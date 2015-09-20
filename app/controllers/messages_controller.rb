class MessagesController < ApplicationController
  before_filter :check_owner, :only => [:edit, :update, :destory, :collaboration, :add_member, :delete_member]
  before_filter :find_message, :except => [:new, :index, :create, :update, :update_poster, :autocomplete_user_name]

  autocomplete :user, :name

  def new
    @message = Message.new(:user_id => current_user.id)
    session[:return_to] = request.url
  end


  def show
    if @message.nil?
      redirect_to(:root, :notice => '抱歉，您访问的课程不存在')
    else
      if params[:position].present?
        @message = Message.where(:message_id => @message.id,:position => params[:position].to_i).first
      else
        @message = Message.where(:message_id => @message.id,:position => 1).first
      end
      session[:return_to] = request.url
    end
  end

  def edit
    session[:return_to] = request.url
  end

  def update
    @message = Message.find(params[:message][:id])
    @message.update_attributes(params[:message])
    @message.name = PinYin.of_string(params[:message][:title]).join('-').downcase
    respond_to do |format|
      if @message.save
        format.html { redirect_to message_path(@message), :success => 'Message was successfully updated.' }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def create
    user = User.find(params[:message][:user_id])
    title = params[:message][:title]
    name = PinYin.of_string(title).join('-').downcase
    user.messages.each do |c|
      if c.name == name
        @name_exsits = true
      end
    end
    if defined? @name_exsits
      redirect_to_target_or_default :root, :notice => "你已经创建了这门课程"
      return
    end
    @message = Message.new(params[:message])
    @message.name = name
    # get a random poster
    all_posters = Dir["app/assets/images/" + Settings.image.default_posters_dir + "*"]
    @message.poster = open(all_posters[rand(all_posters.length)])
    if @message.save
      #track_activity message, message.id
      render :edit, :notice => "新课程创建成功！"
    else
      redirect_to_target_or_default :root, :notice => "新课程创建失败！"
    end
  end

  def destroy
    destroy_notifications @message
    @message.destroy
    redirect_to member_path(@user.name)
  end


  # PUT
  def update_poster
    @message = Message.where(:user_id => params[:message][:user_id], :name => params[:message][:name]).first
    dataurl = params[:message][:poster]

    # mothod to convert base64 image data url to binary image
    @message.image_data= dataurl

    @message.crop_x = params[:message][:crop_x]
    @message.crop_y = params[:message][:crop_y]
    @message.crop_w = params[:message][:crop_w]
    @message.crop_h = params[:message][:crop_h]
    @message.poster = @message.poster
    @message.save

    respond_to do |format|
      format.js
    end
  end

  def index
     @message_groups = []
    if params[:sort] == "time"
      @messages = Message.all
      @messages.in_groups_of(3, false) { |group| @message_groups << group }
    elsif params[:sort] == "star"
      @messages = Message.all
      @messages.in_groups_of(3, false) { |group| @message_groups << group }
    end
  end

  private

  def find_message
    @user = User.find_by_name(params[:member_name])
    @message = Message.where(:user_id => @user.id, :name => params[:message_name]).first
  end

  def check_owner
    if current_user.nil?
      redirect_to :root, :notice => t('login_first_plz')
      return
    end
    if params[:message_name]
      user = User.find_by_name(params[:member_name])
      message = Message.where(:user_id => user.id, :name => params[:message_name]).first
    else
      # for update; find the proper message object when message title is blank
      message = Message.find(params[:message][:id])
    end
    if not (( current_user.admin? ) || (message.user == current_user))
      redirect_to :root, :notice => "抱歉，只有管理员才有此权限"
      return
    end
  end
end

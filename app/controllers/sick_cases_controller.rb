# encoding: utf-8
class SickCasesController < ApplicationController
  before_filter :check_owner, :only => [:edit, :update, :destroy]
  before_filter :check_edited, :only => [:edit, :update, :new, :create]
  before_filter :find_sick_case, :except => [:new, :index, :create, :update, :update_poster, :autocomplete_user_name]

  autocomplete :user, :name

  def new
    @sick_case = SickCase.new(:user_id => current_user.id)
    session[:return_to] = request.url
  end

  def index
     @sick_case_groups = []
    if params[:sort] == "time"
      @sick_cases = SickCase.all
      @sick_cases.in_groups_of(3, false) { |group| @sick_case_groups << group }
    elsif params[:sort] == "star"
      c_sorted = sick_cases_sorted_by_star
      c_sorted.in_groups_of(3, false) { |group| @sick_case_groups << group }
    end
  end

  def show
    if @sick_case.nil?
      redirect_to(:root, :notice => '抱歉，您访问的课程不存在')
    else
      if params[:position].present?
        @sick_hist = SickHist.where(:sick_case_id => @sick_case.id,:position => params[:position].to_i).first
      elsif @sick_case.sick_hists.empty?
        @sick_hist = nil
      else
        @sick_hist = SickHist.where(:sick_case_id => @sick_case.id,:position => 1).first
      end
      session[:return_to] = request.url
    end
  end

  def edit
    session[:return_to] = request.url
  end

  def update
    @sick_case = SickCase.find(params[:sick_case][:id])
    @sick_case.update_attributes(params[:sick_case])
    @sick_case.name = PinYin.of_string(params[:sick_case][:title]).join('-').downcase
    respond_to do |format|
      if @sick_case.save
        format.html { redirect_to sick_case_path(@sick_case), :success => 'SickCase was successfully updated.' }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def create
    user = User.find(params[:sick_case][:user_id])
    title = params[:sick_case][:title]
    name = PinYin.of_string(title).join('-').downcase
    user.sick_cases.each do |c|
      if c.name == name
        @name_exsits = true
      end
    end
    if defined? @name_exsits
      redirect_to_target_or_default :root, :notice => "你已经创建了这门课程"
      return
    end
    @sick_case = SickCase.new(params[:sick_case])
    @sick_case.name = name
    # get a random poster
    all_posters = Dir["app/assets/images/" + Settings.image.default_posters_dir + "*"]
    @sick_case.poster = open(all_posters[rand(all_posters.length)])
    if @sick_case.save
      render :edit, :notice => "新课程创建成功！"
    else
      redirect_to_target_or_default :root, :notice => "新课程创建失败！"
    end
  end

  def destroy
    destroy_notifications @sick_case
    @sick_case.destroy
    redirect_to member_path(@user.name)
  end

  def edit_sick_hist
    @sick_hist = SickHist.where(:sick_case_id => @sick_case.id, :position => params[:position]).first
    respond_to do |format|
      format.js
    end
  end

  def add_sick_hist
    respond_to do |format|
      format.js
    end
  end

  # PUT
  def update_poster
    @sick_case = SickCase.where(:user_id => params[:sick_case][:user_id], :name => params[:sick_case][:name]).first
    dataurl = params[:sick_case][:poster]

    # mothod to convert base64 image data url to binary image
    @sick_case.image_data= dataurl

    @sick_case.poster = @sick_case.poster
    @sick_case.save

    respond_to do |format|
      format.js
    end
  end

  private

  def check_edited
    if !current_user.basic_info.edited?
      redirect_to '/showmyinfo', :notice => '请完善基本信息'
      return
    end
  end

  def find_sick_case
    @user = User.find_by_name(params[:member_name])
    @sick_case = SickCase.where(:user_id => @user.id, :name => params[:sick_case_name]).first
  end

  def check_owner
    if current_user.nil?
      redirect_to :root, :notice => t('login_first_plz')
      return
    end
    if params[:sick_case_name]
      user = User.find_by_name(params[:member_name])
      sick_case = SickCase.where(:user_id => user.id, :name => params[:sick_case_name]).first
    else
      # for update; find the proper sick_case object when sick_case title is blank
      sick_case = SickCase.find(params[:sick_case][:id])
    end
    if not (( current_user.admin? ) || (sick_case.user == current_user))
      redirect_to :root, :notice => "抱歉，只有课程所有者或管理员才有此权限"
      return
    end
  end

end

class BasicInfosController < ApplicationController
  before_filter :check_login

  def edit
    @user = current_user
    @basic_info = @user.basic_info
  end

  def show
    @user = current_user
    @basic_case = @user.basic_cases.where(:edited=>false).last
    if @basic_case.nil?
    	@basic_case = BasicCase.create!(:user_id =>@user.id,:public=>true,:edited=>false)
    end
    	body_sign = @basic_case.body_sign
    if body_sign.nil?
      body_sign =   BodySign.create!(:basic_case_id=>@basic_case.id,:swelling=>"",:status_name=>"")
     @basic_case.body_sign = body_sign
     @basic_case.save
    end
    
    #@status_names = Array.new 
    #if !body_sign.status_name.blank?    
    @status_names =body_sign.status_name.split  
    #end
  end

  def add_sickness
    @user = current_user
    respond_to do |format|
      format.js
    end
  end

  def hyper
    @user = current_user
    @hypertension = @user.hypertension
  end

  def diabetes
    @user = current_user
    @diabetes = @user.diabetes
  end

  def hyperlipidemia
    @user = current_user
    @hyperlipidemia = @user.hyperlipidemia
  end

  def update_hyperlipidemia
    @user = current_user
    @hyperlipidemia = Hyperlipidemia.find(params[:hyperlipidemia][:id])
    @hyperlipidemia.update_attributes(params[:hyperlipidemia])
    respond_to do |format|
      if @hyperlipidemia.save
        format.html { redirect_to member_path(@user.name), :success => 'hyperlipidemia was successfully updated.' }
      else
      	flash[:notice] = @hyperlipidemia.errors.full_messages.first
        format.html { render :action => "hyperlipidemia" }
      end
    end
  end

  def update_diabetes
    @user = current_user
    @diabetes = Diabetes.find(params[:diabetes][:id])
    @diabetes.update_attributes(params[:diabetes])
    respond_to do |format|
      if @diabetes.save
        format.html { redirect_to member_path(@user.name), :success => 'diabetes was successfully updated.' }
      else
      	flash[:notice] = @diabetes.errors.full_messages.first
        format.html { render :action => "diabetes" }
      end
    end
  end

  def update_hyper
    @user = current_user
    @hypertension = Hypertension.find(params[:hypertension][:id])
    @hypertension.update_attributes(params[:hypertension])
    respond_to do |format|
      if @hypertension.save
        format.html { redirect_to member_path(@user.name), :success => 'hypertension was successfully updated.' }
      else
      	flash[:notice] = @hypertension.errors.full_messages.first
        format.html { render :action => "hyper" }
      end
    end
  end

  def update_faq
    @user = current_user
    @basic_case = BasicCase.find(params[:basic_case][:id])
    @basic_case.update_attributes(params[:basic_case])
    #@basic_case.edited = true
    respond_to do |format|
        @basic_case.save
      	format.js
    end
  end

  def commit_ready
    respond_to do |format|
      	format.js
    end
  end

  def update_bodysign
    @user = current_user
    @body_sign = BodySign.find(params[:body_sign][:id])
    @body_sign.update_attributes(params[:body_sign])
    @body_sign.status_name = ""
    
    status_names = params[:status_sign_ids]    
    if !status_names.nil?
    	status_names.each do |ss|
    		@body_sign.status_name += ss+" "
    	end
    end

    respond_to do |format|
      @body_sign.save
        #format.html { redirect_to member_path(@user.name), :success => 'basiccase was successfully updated.' }
	  @basic_case = @body_sign.basic_case
      	  format.js
    end
  end

  def update
    @user = current_user
    @basic_info = BasicInfo.find(params[:basic_info][:id])
    @basic_info.update_attributes(params[:basic_info])
    @basic_info.edited = true;
    respond_to do |format|
      if @basic_info.save
        format.html { redirect_to member_path(@user.name), :success => 'BasicInfo was successfully updated.' }
      else
      	flash[:notice] = @basic_info.errors.full_messages.first
        format.html { render :action => "edit" }
      end
    end
  end


  def edit_sick
    @user = current_user
    session[:return_to] = request.url
  end
  

  def edit_sickness
    @sickness = Sickness.where(:user_id => current_user.id, :position => params[:position]).first
    respond_to do |format|
      format.js
    end
  end

  def edit_sick_asset
    @sick_asset = SickAsset.where(:basic_case_id => params[:basic_case_id] , :position => params[:position]).first
    respond_to do |format|
      format.js
    end
  end

  def case_commit
    @basic_case = BasicCase.find(params[:basic_case_id])
    @basic_case.edited = true
    @basic_case.save    
    @user = current_user
    respond_to do |format|
    	format.html { redirect_to member_path(@user.name), :success => 'faq was successfully updated.' }
    end
 
  end

end

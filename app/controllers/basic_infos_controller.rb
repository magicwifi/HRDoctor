class BasicInfosController < ApplicationController
  before_filter :check_login

  def edit
    @user = current_user
    @basic_info = @user.basic_info
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




end

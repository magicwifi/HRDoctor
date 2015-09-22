class BasicInfosController < ApplicationController
  before_filter :check_login

  def edit
    @user = current_user
    @basic_info = @user.basic_info
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

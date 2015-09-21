class BasicInfosController < ApplicationController
  before_filter :check_login

  def edit
    @user = current_user
    @basic_info = @user.basic_info
  end





end

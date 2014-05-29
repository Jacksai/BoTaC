class MyAccountController < ApplicationController
  def info
    @user = current_user

  end

  def save
    @user.name = params
    redirect_to me_info_path
  end
end

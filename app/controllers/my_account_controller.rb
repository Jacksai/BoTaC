class MyAccountController < ApplicationController
before_action :set_user

  def info
  end

  def save
    @user = current_user
    @user.name = params[:name]
    @user.surname= params[:surname]
    @user.save
    redirect_to me_info_path, :notice => "Changes saved"
  end

  private

  def set_user
    @user = current_user
  end

end

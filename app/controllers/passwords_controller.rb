class PasswordsController < ApplicationController
  def index
    @user_id = params[:user_id]
    @passwords = Password.where(user_id: params[:user_id])
  end

  def new
    @user_id = params[:user_id]
    @password =Password.new
  end

  def create
    password = Password.new(
        user_id: params[:user_id],
        website_name: params[:website_name],
        website_url: params[:website_url],
        password: params[:password]
    )
    password.save

    redirect_to '/passwords/index/' + params[:user_id].to_s
  end
end

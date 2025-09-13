class PasswordsController < ApplicationController
  def index
    @passwords = Password.all
  end

  def new
    @password =Password.new
  end

  def create
        password = Password.new(
            website_name: params[:website_name],
            website_url: params[:website_url],
            password: params[:password]
        )
        password.save

        redirect_to '/passwords/index'
    end
end

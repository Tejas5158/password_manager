class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        user = User.new(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            password: params[:password]
        )
        user.save

        redirect_to root_path
    end
end

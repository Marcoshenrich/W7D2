class UsersController < ApplicationController
    def create
        user = User.new(user_params)
        if user.save
            redirect_to users_url
        else
            redirect_to new_users_url
        end
    end

    def new
        @user = User.new
    end


    def index
        @users = User.all
    end

    private
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
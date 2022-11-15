class UsersController < ApplicationController

    # CRRLLL

    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def require_logged_in
        redirect_to ??? unless logged_in?
    end

    def require_logged_out
        redirect_to ??? if logged_in?
    end

    def logged_in?
        !!current_user
    end

    def login(user)
        session[:session_token] = user.reset_session_token 
    end

    def logout
        current_user.reset_session_token if logged_in
        session[:session_token] = nil
        @current_user = nil
    end

end
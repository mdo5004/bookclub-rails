class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: session_params[:username]).try(:authenticate, session_params[:password])
        if @user
            session[:user] = @user
            render json: @user
        else
            return head(:forbidden)
        end
    end

    private
    def session_params
        params.permit(:username, :password) 
    end
end
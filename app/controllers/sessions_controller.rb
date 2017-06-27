class SessionsController < ApplicationController
   
    def create
        @user = User.find_by(username: session_params[:username])
        render json: @user
    end
    
    private
    def session_params
        params.permit(:username, :password) 
    end
end
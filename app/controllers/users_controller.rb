class UsersController < ApplicationController
   
    def index
        @users = User.all
        render json: @users
    end
    def show
        @user = User.find(params[:id])
        render json: @user
    end
    def create
        @user = User.find_or_create_by(user_params[:username])
        render json: @user
    end
    def delete
    end
    def update
    end
    
end
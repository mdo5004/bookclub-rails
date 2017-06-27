class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    
    def current_user
        @user = User.find(session[:id]) 
    end
end

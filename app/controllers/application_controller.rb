class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    
    def current_user
        session[:user] ||= []
    end
    
    def logged_in?
        return !!current_user
    end
end

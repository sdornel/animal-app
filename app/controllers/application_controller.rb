class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    # protect_from_forgery with: :null_session#:exception
    protect_from_forgery with: :exception
    helper_method :current_user

    def current_user
        # @user = User.find_by(id: session[:id])
        @user ||=  User.find_by(id: session[:user_id]) if session[:user_id]
    end

    # def authorize
    #     redirect_to login_path if current_user.nil? 
    # end
end

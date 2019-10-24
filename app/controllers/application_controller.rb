class ApplicationController < ActionController::Base
    helper_method :logged_in?
    include SessionsHelper
    
    
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
  end
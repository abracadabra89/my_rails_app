class ApplicationController < ActionController::Base
    helper_method :logged_in?
    
    def logged_in?
        !!current_user
      end  
    
    def current_user
        if session[:email]
          # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
          # or nil if we can't decode the token
          @user = User.find_by(email: session[:email])
        end
      end

      def authorized
        redirect_to controller: 'sessions', action: 'new' unless session[:email]
      end
end

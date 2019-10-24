class SessionsController < ApplicationController
  def new
   
  end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:email] || params[:email].empty?
    session[:email] = params[:email]
    redirect_to controller: 'application', action: 'authorized'
  end
end

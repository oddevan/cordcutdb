# sessions_controller.rb
class SessionsController < ApplicationController 
  skip_before_action :admin_only
    
  def create     
    auth = request.env["omniauth.auth"]     
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
    
    reset_session
    
    if (user)
      session[:user_id] = user.id     
      redirect_to root_url, :notice => "Welcome, #{user.name}"
    else
      redirect_to root_url, :notice => "You do not have access to this application."
    end
  end
 
  def destroy
    reset_session
    redirect_to root_url, :notice => "Signed out!"
  end
 
end
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :markdown
  
  before_action :admin_only
 
  private
 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def authenticate_user!
    if !current_user
      redirect_to root_url, :alert => 'You need to sign in for access to this page.'
    end
  end
  
  def admin_only
    unless current_user && current_user.is_admin?
      redirect_to root_url, :alert => "Access denied."
    end
  end
  
  def markdown
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, footnotes: true, strikethrough: true)
  end
end

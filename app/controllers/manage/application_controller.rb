class Manage::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout "manage_application"

  private

  def current_brewery
    @current_brewery ||= Brewery.find(session[:brewery_id]) if session[:brewery_id]
  end

  helper_method :current_brewery

  def authenticate_brewery!
    redirect_to manage_path unless current_brewery
  end
end

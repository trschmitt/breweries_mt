class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_brewery
    @current_brewery ||= Brewery.find(session[:brewery_id]) if session[:brewery_id]
  end

  helper_method :current_brewery
end

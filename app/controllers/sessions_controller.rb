class SessionsController < ApplicationController
  def new
  end

  def create
    brewery = Brewery.find_by_email(params[:email])

    if brewery && brewery.authenticate(params[:password])
      session[:brewery_id] = brewery.id
      redirect_to events_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:brewery_id] = nil
    redirect_to new_session_path
  end
end

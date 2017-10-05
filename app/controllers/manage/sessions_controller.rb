class Manage::SessionsController < Manage::ApplicationController
  def new
  end

  def create
    brewery = Brewery.find_by_email(params[:email])

    if brewery && brewery.authenticate(params[:password])
      session[:brewery_id] = brewery.id
      redirect_to manage_events_path
    else
      redirect_to manage_path, notice: "Login unsuccessful"
    end
  end

  def destroy
    session[:brewery_id] = nil
    redirect_to manage_path
  end
end

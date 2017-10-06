class Manage::BreweriesController < Manage::ApplicationController

  def show
    @brewery = Brewery.find(params[:id])
  end

  def edit
  end

  def update
    @brewery = current_brewery
    if @brewery.update(brewery_params)
      redirect_to manage_brewery_path(current_brewery)
    else
      render :edit
    end
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
    if @brewery.save
      session[:brewery_id] = @brewery.id
      redirect_to edit_manage_brewery_path(current_brewery.id)
    else
      render :new
    end
  end

  private

  def brewery_params
    params
      .require(:brewery)
      .permit(
        :name,
        :email,
        :password,
        :password_confirmation,
        :phone,
        :description,
        :website,
        :established,
        :address_street,
        :address_city,
        :address_state,
        :operating_hours,
        :location_type,
       )
  end
end

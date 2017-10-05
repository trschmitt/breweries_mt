class BreweriesController < ApplicationController

  def show
    #code
  end
  
  def index
    @breweries = Brewery.all
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
    if @brewery.save
      session[:brewery_id] = @brewery.id
      redirect_to @brewery
    else
      render :new
    end
  end

  private

  def brewery_params
    params.require(:brewery).permit(:name, :email, :password, :password_confirmation)
  end
end

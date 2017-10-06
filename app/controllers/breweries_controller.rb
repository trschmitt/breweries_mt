class BreweriesController < ApplicationController
  def show
    @brewery = Brewery.find(params[:id])
  end

  def index
    @breweries = Brewery.page(params[:page]).per(10)
  end
end

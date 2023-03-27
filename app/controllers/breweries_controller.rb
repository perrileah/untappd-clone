class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.all
    render :index
  end

  def show
    @brewery = Brewery.find_by(id: params[:id])
    render :show
  end

  def create
    @brewery = Brewery.new(
      name: params[:name],
      address: params[:address],
      website: params[:website],
      logo: params[:logo],
    )
    @brewery.save
    render :show
  end

  def update
    @brewery = Brewery.find_by(id: params[:id])
    @brewery.update(
      name: params[:name],
      address: params[:address],
      website: params[:website],
      logo: params[:logo],
    )
    @brewery.save
    render :show
  end

  def destroy
    @brewery = Brewery.find_by(id: params[:id])
    @brewery.destroy
    render json: { message: "Destroyed!" }
  end
end

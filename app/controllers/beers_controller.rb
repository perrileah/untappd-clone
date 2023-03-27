class BeersController < ApplicationController
  def index
    @beers = Beer.all
    render :index
  end

  def show
    @beer = Beer.find_by(id: params[:id])
    render :show
  end

  def create
    @beer = Beer.new(
      name: params[:name],
      brewery_id: params[:brewery_id],
      style: params[:style],
      abv: params[:abv],
    )
    @beer.save
    render :show
  end

  def update
    @beer = Beer.find_by(id: params[:id])
    @beer.update(
      name: params[:name],
      brewery_id: params[:brewery_id],
      style: params[:style],
      abv: params[:abv],
    )
    @beer.save
    render :show
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer.destroy
    render json: { message: "Destroyed!" }
  end
end

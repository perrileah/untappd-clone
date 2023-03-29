class CheckinsController < ApplicationController
  def index
    @checkins = CheckIn.all
    render :index
  end

  def show
  end

  def new
    @checkin = CheckIn.new(
      beer_id: params[:beer_id],
      user_id: params[:user_id],
      rating: params[:rating],
      image: params[:image],
      comment: params[:comment],
    )
    @checkin.save

    if @checkin.save
      flash.alert = "You have successfully added a beer check-in."
    else
      flash.alert = "Try again"
    end
  end

  def create
    @checkin = CheckIn.new(
      beer_id: params[:beer_id],
      user_id: params[:user_id],
      rating: params[:rating],
      image: params[:image],
      comment: params[:comment],
    )
    @checkin.save

    if @checkin.save
      flash.alert = "You have successfully added a beer check-in."
    else
      flash.alert = "Try again"
    end
  end

  def update
    @checkin = CheckIn.find_by(id: params[:id])
    @checkin.update(
      beer_id: params[:beer_id],
      user_id: params[:user_id],
      rating: params[:rating],
      image: params[:image],
      comment: params[:comment],
    )
    @checkin.save
    render :show
  end

  def destroy
    @checkin = CheckIn.find_by(id: params[:id])
    @checkin.destroy
    render json: { message: "Destroyed!" }
  end
end

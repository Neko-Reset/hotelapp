class HotelsController < ApplicationController
  def index
    @rooms = Room.all
    # @hotels =Hotel.all
    @hotels = Hotel.joins(:room)
  end

  def new
  @hotel = Hotel.new
  @hotel.start_day = params[:start_day]
  @hotel.end_day = params[:end_day]
  @room = Room.find_by(id: params[:room_id])
  @hotel.total_days = @hotel.amount_days
  # @hotel.total_price = @hotel.amount_price
  end

  def create
    @hotel = Hotel.new(params.require(:hotel).permit(:start_day, :end_day, :number, :price, :room_price, :room_id))
      if @hotel.save
        flash[:notice] = "新規投稿をしました"
        redirect_to("/hotels")
      else
        render("hotels/new")
      end
  end

  def show
    @hotel = Hotel.find_by(id: params[:id])
  end
end

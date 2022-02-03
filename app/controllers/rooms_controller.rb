class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def search
    keyword = params[:keyword]
    @rooms = User.where('name LIKE?', "%#{keyword}%")
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:room_name, :room_memo, :room_price, :room_area, :image))
      if @room.save
        redirect_to("/rooms")
      else
        render("rooms/new")
      end
  end

  def show
    @room = Room.find_by(id: params[:id])
    @hotel = Hotel.new
  end

  def edit
  end

  def update
  end

  def destroy
    @room = Room.find(params[:id])
      @room.destroy
      flash[:notice] = "削除しました"
      redirect_to("/rooms")
  end
  
end

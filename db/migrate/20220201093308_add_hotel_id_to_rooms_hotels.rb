class AddHotelIdToRoomsHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms_hotels, :hotel_id, :integer
  end
end

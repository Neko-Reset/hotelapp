class AddRoomIdToRoomsHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms_hotels, :room_id, :integer
  end
end

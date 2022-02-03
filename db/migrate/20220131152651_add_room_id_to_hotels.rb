class AddRoomIdToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :room_id, :integer
  end
end

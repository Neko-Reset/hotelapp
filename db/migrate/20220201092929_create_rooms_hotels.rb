class CreateRoomsHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms_hotels do |t|

      t.timestamps
    end
  end
end

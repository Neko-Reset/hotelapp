class Abc < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :start_day, :date
    change_column :rooms, :end_day, :date
    change_column :rooms, :room_price, :integer
    change_column :hotels, :price, :integer
  end
end

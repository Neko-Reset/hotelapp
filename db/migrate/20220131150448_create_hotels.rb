class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :price
      t.string :start_day
      t.string :end_day

      t.timestamps
    end
  end
end

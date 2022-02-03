class AddAmountDaysToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :total_days, :string
    add_column :hotels, :total_price, :string
  end
end

class A < ActiveRecord::Migration[6.1]
  def change
    change_column :hotels, :start_day, :date
    change_column :hotels, :end_day, :date
    change_column :hotels, :total_days, :integer
    change_column :hotels, :total_price,:integer
  end
end

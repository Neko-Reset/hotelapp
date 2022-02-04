class Addddddd < ActiveRecord::Migration[6.1]
  def change
    remove_column :hotels, :total_days, :integer
  end
end

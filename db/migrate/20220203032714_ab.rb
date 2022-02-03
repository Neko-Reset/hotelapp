class Ab < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :number,:integer
    add_column :hotels, :number, :integer
  end
end

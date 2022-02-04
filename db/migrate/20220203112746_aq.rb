class Aq < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :total_days, :integer
  end
end

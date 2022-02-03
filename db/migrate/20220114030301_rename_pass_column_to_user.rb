class RenamePassColumnToUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :Users, :pass, :password
  end
end

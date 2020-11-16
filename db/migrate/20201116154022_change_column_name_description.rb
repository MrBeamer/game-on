class ChangeColumnNameDescription < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :descriptin, :description
  end
end

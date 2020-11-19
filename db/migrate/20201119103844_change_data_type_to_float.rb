class ChangeDataTypeToFloat < ActiveRecord::Migration[6.0]
  def change
   change_column :users, :latitude, :float
   change_column :users, :longitude, :float
  end
end

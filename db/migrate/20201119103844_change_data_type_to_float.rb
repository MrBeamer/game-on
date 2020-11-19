class ChangeDataTypeToFloat < ActiveRecord::Migration[6.0]
  def change
   remove_column :users, :latitude
   remove_column :users, :longitude
   add_column :users, :latitude, :float
   add_column :users, :longitude, :float
  end
end

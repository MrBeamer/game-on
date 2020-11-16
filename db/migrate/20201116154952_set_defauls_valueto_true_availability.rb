class SetDefaulsValuetoTrueAvailability < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :availability, :boolean, :default =>  true
  end
end

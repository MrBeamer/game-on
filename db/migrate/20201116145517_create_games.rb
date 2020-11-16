class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :descriptin
      t.integer :price_per_day
      t.string :category
      t.string :condition
      t.boolean :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

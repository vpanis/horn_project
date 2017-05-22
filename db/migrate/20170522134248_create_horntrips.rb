class CreateHorntrips < ActiveRecord::Migration[5.0]
  def change
    create_table :horntrips do |t|
      t.string :title
      t.string :location
      t.integer :price
      t.date :starting_day
      t.integer :length
      t.text :description
      t.boolean :is_outside
      t.boolean :is_dirty
      t.boolean :is_food
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

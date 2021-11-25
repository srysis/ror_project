class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :image
      t.string :title
      t.text :description
      t.string :genre
      t.decimal :price

      t.timestamps
    end
  end
end

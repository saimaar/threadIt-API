class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :color
      t.string :gender
      t.string :size
      t.string :description
      t.string :image
      t.integer :price
      t.references :category

      t.timestamps
    end
  end
end

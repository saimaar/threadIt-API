class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.references :cart
      t.references :item

      t.timestamps
    end
  end
end

class AddDesignerToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :designer, :string
  end
end

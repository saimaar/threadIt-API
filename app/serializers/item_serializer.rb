class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :gender, :size, :description, :image, :price, :category_id, :category_name
  # belongs_to :order_item cannot do this
## inorder to hit the byebug here, you must call the method name in the attribute above!
  def category_name
    # byebug
    self.object.category.name
  end

## in my seed data, I have set the size equals to an array , but
## in my database it is stored as string. In order to get back the data as an array
## used JSON.parse to convert str --> arr
  def size
     size = self.object.size
     return JSON.parse(size)
  end

end

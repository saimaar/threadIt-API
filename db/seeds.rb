# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cart.destroy_all
Order.destroy_all
CartItem.destroy_all
OrderItem.destroy_all
Item.destroy_all
Category.destroy_all


saima = User.create(username: "saima", email: "saima_992@hotmail.com", password:"12345")
annie = User.create(username: "annie", email: "annie_iscool@hotmail.com", password:"54321")

cart1 = Cart.create(user: saima)
cart2 = Cart.create(user: annie)

tunic = Category.create(name: "tunic")
dress = Category.create(name: "dress")

item1 = Item.create(
  name: "KAELI DRESS",
  color: "Yellow",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "A sunny yellow dress, adorned with embroidered accents onto exquisite fabric. The Kaeli Dress with it’s v-neckline and three quarter bell sleeves is perfect for summer.",
  image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/f/w/fw19mb055cf-yellow_1_.jpg",
  price: 123,
  category: tunic
   )

item2 = Item.create(
 name: "Poncho DRESS",
 color: "Blue",
 gender: "female",
 size:["S", "M", "L", "XL"],
 description: "Cute poncho perfect for a date night!",
 image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/s/s/ss18jm073_turquise_2_.jpg",
 price: 100,
 category: tunic
  )

item1 = Item.create(
  name: "ZOYA DRESS",
  color: "Ivory",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "The Zoya Dress is an understated stone hued dress with tassel detailing at the rounded neckline",
  image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/s/s/ss19mb010-stone--_2_.jpg?v=4",
  price: 123,
  category: dress
 )

item2 = Item.create(
  name: "NORA DRESS",
  color: "Indigo",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "The silken Nora Dress is adorned with motifs inspired by the majestic architecture of Rajasthan’s palaces",
  image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/f/w/fw19pds113_indigo.jpg?v=4",
  price: 100,
  category: dress
)

cartItem1 = CartItem.create(cart: cart1, item: item1)




  # create_table "cart_items", force: :cascade do |t|
  #   t.bigint "cart_id"
  #   t.bigint "user_id"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.index ["cart_id"], name: "index_cart_items_on_cart_id"
  #   t.index ["user_id"], name: "index_cart_items_on_user_id"
  # end
  #
  # create_table "carts", force: :cascade do |t|
  #   t.bigint "user_id"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.index ["user_id"], name: "index_carts_on_user_id"
  # end
  #
  # create_table "categories", force: :cascade do |t|
  #   t.string "name"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end
  #
  # create_table "items", force: :cascade do |t|
  #   t.string "name"
  #   t.string "color"
  #   t.string "gender"
  #   t.string "size"
  #   t.string "description"
  #   t.string "image"
  #   t.integer "price"
  #   t.bigint "category_id"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.index ["category_id"], name: "index_items_on_category_id"
  # end
  #
  # create_table "order_items", force: :cascade do |t|
  #   t.bigint "order_id"
  #   t.bigint "item_id"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.index ["item_id"], name: "index_order_items_on_item_id"
  #   t.index ["order_id"], name: "index_order_items_on_order_id"
  # end
  #
  # create_table "orders", force: :cascade do |t|
  #   t.bigint "user_id"
  #   t.string "address"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.index ["user_id"], name: "index_orders_on_user_id"
  # end
  #
  # create_table "users", force: :cascade do |t|
  #   t.string "username"
  #   t.string "email"
  #   t.string "password_digest"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end

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
  category: tunic,
  designer: "Anita Dongre"
   )

item2 = Item.create(
 name: "Poncho DRESS",
 color: "Blue",
 gender: "female",
 size:["S", "M", "L", "XL"],
 description: "Cute poncho perfect for a date night!",
 image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/s/s/ss18jm073_turquise_2_.jpg",
 price: 100,
 category: tunic,
 designer: "Anita Dongre"
  )

item1 = Item.create(
  name: "ZOYA DRESS",
  color: "Ivory",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "The Zoya Dress is an understated stone hued dress with tassel detailing at the rounded neckline",
  image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/s/s/ss19mb010-stone--_2_.jpg?v=4",
  price: 123,
  category: dress,
  designer: "Anita Dongre"
 )

item2 = Item.create(
  name: "NORA DRESS",
  color: "Indigo",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "The silken Nora Dress is adorned with motifs inspired by the majestic architecture of Rajasthan’s palaces",
  image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/f/w/fw19pds113_indigo.jpg?v=4",
  price: 100,
  category: dress,
  designer: "Anita Dongre"
)

cartItem1 = CartItem.create(cart: cart1, item: item1)
review1 = Review.create(item: item1, user: saima, comment: "love this dress", rating: 3)

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
jumpsuit = Category.create(name: "jumpsuit")
bottom = Category.create(name: "bottom")
top = Category.create(name: "top")
wedding = Category.create(name: "wedding")


item1 = Item.create(
  name: "KAELI DRESS",
  color: "Yellow",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "A sunny yellow dress, adorned with embroidered accents onto exquisite fabric. The Kaeli Dress with it’s v-neckline and three quarter bell sleeves is perfect for summer.",
  image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/f/w/fw19mb055cf-yellow_1_.jpg",
  price: 145,
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

item3 = Item.create(
  name: "ZOYA DRESS",
  color: "Grey",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "The Zoya Dress is an understated stone hued dress with tassel detailing at the rounded neckline",
  image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/s/s/ss19mb010-stone--_2_.jpg?v=4",
  price: 123,
  category: dress,
  designer: "Anita Dongre"
 )

item4 = Item.create(
  name: "NORA DRESS",
  color: "Blue",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "The silken Nora Dress is adorned with motifs inspired by the majestic architecture of Rajasthan’s palaces",
  image:"https://us.anitadongre.com/media/catalog/product/cache/9068914f3af5c89421a71a6fdd0cb779/f/w/fw19pds113_indigo.jpg?v=4",
  price: 150,
  category: dress,
  designer: "Anita Dongre"
)


item5 = Item.create(
  name: "Aylin Dress",
  color: "pink",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "Elaborately embroidered in summery hues and motifs on delicate cotton silk. The Aylin Tunic features a round keyhole neckline with tasselled tie up details, full sleeves and a gathered hemline.
Style Tip: Style this tunic as a dress or pair it with a churidar for a light summer look.
Fabric Content: Outer: 74% Cotton 26% Silk Inner: 100% Cotton",
  image:"https://us.anitadongre.com/media/catalog/product/cache/8de74e620574e722f01d119e92a06058/s/s/ss19mb080-onion-pink-_1_.jpg",
  price: 100,
  category: tunic,
  designer: "Anita Dongre"
)


# -------------------------------jumpsuits-------------------------------------------------------------
item6 = Item.create(
  name: "Naila",
  color: "blue",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "Hand embroidered with traditional floral motifs, this aqua fitted tunic features sheer full sleeves, a tie-up neck and side slits. This beautiful fitted dress was embroidered by the women of SEWA Trade Facilitation Centre.",
  image:"https://us.anitadongre.com/media/catalog/product/cache/8de74e620574e722f01d119e92a06058/s/s/ss18rt095_aqua_3__1.jpg?",
  price: 300,
  category: top,
  designer: "Global Desi"
   )

item7 = Item.create(
 name: "Orange Jumpsuit",
 color: "orange",
 gender: "female",
 size:["S", "M", "L", "XL"],
 description: "Cute Jumpsuit perfect for a date night!",
 image:"https://www.globaldesi.in/media/catalog/product/cache/8ba85772601582a264183d0a493354f1/f/f/ff20gh005jsmo_rust_2_.jpg",
 price: 200,
 category: jumpsuit,
 designer: "Global Desi"
  )

item8 = Item.create(
  name: "Wine Jumpsuit",
  color: "red",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "The Zoya Dress is an understated stone hued dress with tassel detailing at the rounded neckline",
  image: "https://www.globaldesi.in/media/catalog/product/cache/8ba85772601582a264183d0a493354f1/f/f/ff20gh001ajsrl_wine_1_.jpg",
  price: 50,
  category: jumpsuit,
  designer: "Global Desi"
 )

item9 = Item.create(
  name: "Coral Printed Jumpsuit",
  color: "pink",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "The silken Nora Dress is adorned with motifs inspired by the majestic architecture of Rajasthan’s palaces",
  image:"https://www.globaldesi.in/media/catalog/product/cache/8ba85772601582a264183d0a493354f1/f/f/ff20gh001jsrys_coral_1_.jpg",
  price: 100,
  category: jumpsuit,
  designer: "Global Desi"
)

item10 = Item.create(
  name: "Blue Gharara Jumpsuit",
  color: "blue",
  gender: "female",
  size:["S", "M", "L", "XL"],
  description: "blue summery feels",
  image:"https://www.globaldesi.in/media/catalog/product/cache/8ba85772601582a264183d0a493354f1/s/s/ss20gh027jsry_ss20gccfw19blue.jpg",
  price: 300,
  category: jumpsuit,
  designer: "Global Desi"
   )



item11 = Item.create(
 name: "ARETHA LEHENGA",
 color: "yellow",
 gender: "female",
 size:["S", "M", "L", "XL"],
 description: "A beautifully fluid lehenga with rich gold details captures the celebratory spirit with vivid colours. It comes co-ordinated with a dressy choli and a dupatta.",
 image:"http://lookbook.anitadongre.com/Summer-2020/images/ss21.jpg",
 price: 1000,
 category: wedding,
 designer: "Anita Dongre"
  )


item12 = Item.create(
 name: "AMARI LEHENGA",
 color: "pink",
 gender: "female",
 size:["S", "M", "L", "XL"],
 description: "This striking pastel-hued lehenga, with metallic gold thread work that glints as it catches light, is all about soft glamour. A matching choli and a dupatta completes the look.",
 image:"http://lookbook.anitadongre.com/Summer-2020/images/ss23.jpg",
 price: 2000,
 category: wedding,
 designer: "Anita Dongre"
  )


  item12 = Item.create(
   name: "Anarkali In Tulle",
   color: "pink",
   gender: "female",
   size:["S", "M", "L", "XL"],
   description: "Anarkali In Tulle Featuring Resham Embroidered Panels With An Under Layer Of A Floral Printed Chanderi Lining. Paired With An Embroidered Ombré Dupatta In Tulle And A Churidar.",
   image:"https://cdn.shopify.com/s/files/1/2392/5893/products/TT-DAY-10335_400x.jpg",
   price: 4000,
   category: wedding,
   designer: "Anita Dongre"
    )


  item13 = Item.create(
   name: "Anarkali With A Trail",
   color: "pink",
   gender: "female",
   size:["S", "M", "L", "XL"],
   description: "Anarkali With A Trail In Tulle Featuring Velvet Appliqué Work And Pearl Embroidery. Paired With A Tulle Dupatta And Churidar.",
   image:"https://cdn.shopify.com/s/files/1/2392/5893/products/TT-DAY-10875_1024x1024.jpg",
   price: 4000,
   category: wedding,
   designer: "Anita Dongre"
    )



  item14 = Item.create(
   name: "Straight Kurta In Georgette",
   color: "red",
   gender: "female",
   size:["S", "M", "L", "XL"],
   description: "Straight Kurta In Georgette With Multi-Coloured Floral Print Highlighted With Sequins. Paired With A Tulle Dupatta And Churidar.",
   image:"https://cdn.shopify.com/s/files/1/2392/5893/products/TT-DAY-11082_400x.jpg",
   price: 2000,
   category: wedding,
   designer: "Anita Dongre"
    )


  item16 = Item.create(
   name: "Mix N Match Top",
   color: "pink",
   gender: "female",
   size:["S", "M", "L", "XL"],
   description: "Floaty and cropped, Free People's Mix N Match top does everything for your figure with wide sleeves and boho spirit.",
   image:"https://slimages.macysassets.com/is/image/MCY/products/0/optimized/15819630_fpx.tif?op_sharpen=1&wid=402&hei=489&fit=fit,1&$filtersm$&fmt=webp",
   price: 30,
   category: top,
   designer: "Free People"
    )


  item16 = Item.create(
   name: "TEXTURED WEAVE SHIRT",
   color: "black",
   gender: "female",
   size:["S", "M", "L", "XL"],
   description: "Utilitarian details -- like epaulets, zip pockets and roll-tab sleeves -- add a cool vibe to Calvin Klein's essential blouse, a workweek go-to for seasons to come.",
   image:"https://slimages.macysassets.com/is/image/MCY/products/1/optimized/9213461_fpx.tif?op_sharpen=1&wid=402&hei=489&fit=fit,1&$filtersm$&fmt=webp",
   price: 20,
   category: top,
   designer: "Calvin Klein"
    )

cartItem1 = CartItem.create(cart: cart1, item: item1)
review1 = Review.create(item: item1, user: saima, comment: "love this dress", rating: 3)

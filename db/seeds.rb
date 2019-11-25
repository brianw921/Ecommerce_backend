# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
OrderItem.destroy_all
Item.destroy_all
Order.destroy_all
User.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
# #MENS Shoes
#  user1 = User.create(username: "Rei", password: "aye")
#  item1 = Item.create(name: "ULTRABOOST SHOES", price: 180, category: "men", quantity: 20, description: "Built for comfort and performance. These men's running shoes have a breathable knit upper with ventilation in key sweat zones to help keep feet cool and dry. A flexible outsole moves in harmony with responsive cushioning for a smooth, energy-filled ride.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/98a870193e9341b0af19aa76011ef0b8_9366/Ultraboost_Shoes_Black_G54001_01_standard.jpg")
#  item2 = Item.create(name: "NMD_R1 SHOES", price: 130, category: "men", quantity: 20, description: "Run with it. These adidas NMD_R1 Shoes are a little technical and a lot street smart. Their midsole plugs flash back to the '80s, but the knit upper, full-length cushioned midsole and EVA inserts are 100 percent fashion forward.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/459ff194c35e45ea91b1a8ba00fc4876_9366/NMD_R1_Shoes_Black_B42200_01_standard.jpg")
#  item3 = Item.create(name: "ULTRABOOST 19 SHOES", price: 180,category: "men", quantity: 20, description: "Running reinvented. These high-performance neutral running shoes deliver unrivaled comfort and energy return. The lightweight and propulsive shoes have a seamless knit upper that's engineered with motion weave technology to provide stretch while also holding your foot in place as you run. The second-skin fit follows the shape of your foot to reduce pressure points.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/4d916b2719154d529b58a9a700dca94b_9366/Ultraboost_19_Shoes_Black_B37704_01_standard.jpg")
#  item4 = Item.create(name: "HARDEN VOL. 4 SHOES", price: 130, category: "men", quantity: 20, description: "These basketball shoes are designed specifically for James Harden's game to help him stay strong in the fourth quarter. Featuring ultra-lightweight and responsive midsole cushioning, they have a midfoot band for the added lockdown and stability needed to make hard, decisive cuts. A rubber outsole tailored to Harden's signature on-court movements provides outstanding traction and grip.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/5f07247483a94810a216aa06016a4266_9366/Harden_Vol._4_Shoes_White_EF1260_01_standard.jpg")
#  item5 = Item.create(name: "NMD_R1 SHOES", price: 130, category: "men", quantity: 20, description: "Run with it. These adidas NMD_R1 Shoes are a little technical and a lot street smart. Their midsole plugs flash back to the '80s, but the knit upper, full-length cushioned midsole and EVA inserts are 100 percent fashion forward.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/459ff194c35e45ea91b1a8ba00fc4876_9366/NMD_R1_Shoes_Black_B42200_01_standard.jpg")
#  item6 = Item.create(name: "ALPHABOOST SHOES", price: 120, category: "men", quantity: 20,description: "Designed for athletes looking to step up their game, these running shoes are ideal for explosive drills and speed training. Dual-density cushioning and stability pods pack more support into the midsole for added control during multidirectional moves. A lightweight and breathable upper offers support where you need it most.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/f1b70cb3d9754026b6ebaa31000eb4b0_9366/Alphaboost_Shoes_Black_G54128_01_standard.jpg")
#  item7 = Item.create(name: "SUPERSTAR SHOES", price: 90, category: "men", quantity: 20, description: "The one. The only. The adidas Superstar sneaker first debuted in 1969 as a basketball trainer. Today, it's a modern streetwear icon. This version has a smooth leather upper capped off with the instantly recognizable shell toe. Everything rides on a sturdy rubber cupsole.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/9a765c268d4746e08307aace00cbeb72_9366/Superstar_Shoes_White_FV3577_01_standard.jpg")
#  item8 = Item.create(name: "SWIFT RUN SHOES", price: 85, category: "men", quantity: 20,description: "Inspired by adidas heritage running designs, the Swift offers a sleek look and comfortable cushioning. These soft knit shoes stand out with a seasonal pattern inspired by jazz music. They're detailed with smooth welded 3-Stripes and cushioned with a lightweight EVA midsole.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/188b039186714af186b4aa2a011eb37c_9366/Swift_Run_Shoes_White_EE4442_01_standard.jpg")
#  item9 = Item.create(name: "ULTRABOOST S&L SHOES", price: 180,category: "men", quantity: 20, description: "Designed for everyday running comfort, these shoes have a soft leather upper with suede overlays. Responsive cushioning works with a flexible outsole to return energy to your stride.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/5fc229e71ad44c708630aab100f46bf1_9366/Ultraboost_SandL_Shoes_Black_EF1361_01_standard.jpg")
#  item10 = Item.create(name: "POD-S3.1 SHOES", price: 100, category: "men", quantity: 20, description: "Modern comfort in an archival design. These shoes upgrade the cushioning systems of the '90s with energy-returning Boost. An EVA forefoot delivers targeted cushioning, and a TPU midfoot bridge stabilizes the ride. The mesh upper has TPU welding at the toe, side and heel for durability.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/8aa364fc502e4d139122aabc00fcfd27_9366/POD_S3.1_Shoes_Black_EF1828_01_standard.jpg")
#  item11 = Item.create(name: "NMD_R1 PRIMEKNIT SHOES", price: 170, category: "men", quantity: 20, description: "The NMD is back with a new look inspired by premium technical outerwear. These shoes are built with a flexible adidas Primeknit upper with TPU overlays for adaptive support. Midsole EVA plugs accent the responsive Boost midsole.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/e182deb031e341e797b2aa9a00ff6d2b_9366/NMD_R1_Primeknit_Shoes_White_EE5077_01_standard.jpg")
#  item12 = Item.create(name: "STAN SMITH SHOES", price: 100, category: "men", quantity: 20, description: "The instantly recognizable classic gets a cheeky bit of signature flourish. These Stan Smith shoes update the iconic look with cursive heel branding that reads `Stan` on one side and `Smith` on the other. The soft leather upper includes the famous perforated 3-Stripes.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/0e8bc6bb51ee4dfba037aa7e00a3a301_9366/Stan_Smith_Shoes_White_EE5818_01_standard.jpg")

#  #Womens Shoes
#  item13 = Item.create(name: "NMD_R1 SHOES", price: 130 , category: "women", quantity: 20,  description: "An '80s racing style leads the pack with modern upgrades. These shoes are updated for today with a flexible and supportive adidas Primeknit upper and responsive Boost cushioning for endless energy. Electroplated midsole plugs add a glam finish.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/b7bf5d03f49348ac8b29aab000fd58f7_9366/NMD_R1_Shoes_White_EE5173_01_standard.jpg")
#  item14 = Item.create(name: "SOLAR RIDE SHOES", price: 100 , category: "women", quantity: 20,  description: "These shoes provide flexibility and support for daily distance running. They have a breathable mesh upper and springy cushioning for a comfortable ride.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/bc5fbda4f59940249f82aa4801568868_9366/Solar_Ride_Shoes_Black_EF1443_01_standard.jpg")
#  item15 = Item.create(name: "ULTRABOOST SHOES", price: 180 , category: "women", quantity: 20,  description: "Built for comfort and performance. These women's running shoes have a breathable knit upper with ventilation in key sweat zones to help keep feet cool and dry. A flexible outsole moves in harmony with responsive cushioning for a smooth, energy-filled ride.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/35a22142df5e49a1a57caa990134d1a9_9366/Ultraboost_Shoes_White_F34079_01_standard.jpg")
#  item16 = Item.create(name: "CLOUDFOAM PURE SHOES", price: 70 , category: "women", quantity: 20,  description: "Explore your surroundings. These adidas running-inspired shoes feature a foot-hugging knit upper and a female-friendly fit. Soft midsole cushioning adds comfort as you head out for coffee or discover a busy side street.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/8ac9ff914c1c43faa1deaa4300dca159_9366/Cloudfoam_Pure_Shoes_Grey_EE8078_01_standard.jpg")
#  item17 = Item.create(name: "CLOUDFOAM REFINE ADAPT SHOES", price: 60 , category: "women", quantity: 20,  description: "Clean, modern style. These girls' shoes have a stretchy mesh upper and sleek pull-on design. An elastic band crosses over the top, while Cloudfoam cushioning adds unbeatable comfort underneath.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/d2b97128620f4061940ba83900ccae3b_9366/Cloudfoam_Refine_Adapt_Shoes_White_DB1338_01_standard.jpg")
#  item18 = Item.create(name: "FALCON SHOES", price: 100 , category: "women", quantity: 20,  description: "Be bold. Be daring. These adidas Falcon Shoes take their inspiration from '90s runners and the rebellious spirit of the `big-is-more` street style of the time. Embrace the wide, chunky silhouette and the bold attitude. The soft mesh and suede upper and EVA midsole keep you hustling all day.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/49e9743bc8574c79b765a913009cdbc2_9366/Falcon_Shoes_White_B28128_01_standard.jpg")
#  item19 = Item.create(name: "NITE JOGGER SHOES", price: 130 , category: "women", quantity: 20,  description: "The first Nite Jogger debuted in 1980, when recreational running was becoming popular. True to their origins, these shoes flash reflective details. Made of a mix of nylon, mesh and leather, they show off wintry silver hues. Boost cushioning adds a responsive, energy-returning feel.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/75b950ac0a8c4d6d9d75aa2a0121261c_9366/Nite_Jogger_Shoes_Silver_EE5851_01_standard.jpg")
#  item20 = Item.create(name: "CONTINENTAL 80 SHOES", price: 80 , category: "women", quantity: 20,  description: "Just like their 1980s namesake, these shoes combine versatility with good looks. They're made with a suede upper for a soft feel. A distinctive split cupsole and curved webbing stripe complete the retro vibe.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/702a7424f37c4adfa26aaac000e3bf76_9366/Continental_80_Shoes_White_EE5363_01_standard.jpg")
#  item21 = Item.create(name: "ALPHAEDGE 4D REFLECTIVE SHOES", price: 300 , category: "women", quantity: 20,  description: "Add an edge to your game with the new AlphaEdge 4D featuring fully reflective primeknit for maximum visibility. The adidas 4D lattice midsole was developed using years of athlete data and 3D printed to deliver precisely tuned support and cushioning right where you need it.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/747c3c21d62549e9940faaa300fe011b_9366/Alphaedge_4D_Reflective_Shoes_White_FV4687_01_standard.jpg")
#  item22 = Item.create(name: "NMD_R1 GTX SHOES", price: 180 , category: "women", quantity: 20,  description: "An '80s racing style leads the pack with modern upgrades. Taking cues from outdoor gear, these shoes are updated for the season with a fully waterproof lining and a Terrex graphic. Responsive Boost cushioning provides modern comfort while the midsole plugs add signature NMD details.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/d365bddacaf84dc08660aab500fe887f_9366/NMD_R1_GTX_Shoes_Black_EE6433_01_standard.jpg")
#  item23 = Item.create(name: "PHARRELL WILLIAMS X ADIDAS SOLAR HU SHOES", price: 160 , category: "women", quantity: 20,  description: "adidas teamed up with Pharrell Williams to create these running shoes that celebrate the world's many vibrant hues. They have a breathable textile upper and responsive cushioning for an energized ride. A stability rail helps guide the foot through the gait cycle.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/5f2e6a6d52544b118388aa4f010ff35a_9366/Pharrell_Williams_x_adidas_Solar_Hu_Shoes_White_EF2378_01_standard.jpg")
#  item24 = Item.create(name: "SWIFT RUN SHOES", price: 85 , category: "women", quantity: 20,  description: "The Swift is a casual running style that's designed for everyday wear. These stretchy knit shoes have a streamlined shape and a supportive, sock-like feel.", image: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/0083153c0320452d9c68a8bf0116413b_9366/Swift_Run_Shoes_Green_AQ0866_01_standard.jpg")

# order1 = Order.create(cart: false, user_id: user1.id)
# order2 = Order.create(cart: true, user_id: user1.id)
# order_items1 = OrderItem.create(item_id: item1.id, order_id: order1.id)
# order_items2 = OrderItem.create(item_id: item1.id, order_id: order2.id)
require 'rest-client'
require 'dotenv'

response = RestClient::Request.execute(
  method: :get,
  url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=men',
  headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
    "x-rapidapi-key": ENV["NYT_API_KEY"]}
)

product_data = JSON.parse(response)["_embedded"]["products"]

product_data.each do |dataInfo|
  
    Item.create(
    product_full_name: dataInfo["product_full_name"],
    original_price: dataInfo["original_price"],
    category: dataInfo["category"],
    gender: dataInfo["gender"],
    purchase_limit: dataInfo["purchase_limit"],
    description_headline: dataInfo["description_headline"],
    description_bullets: dataInfo["description_bullets"],
    image: dataInfo["_links"]["image_large"]["href"]
  )
end

# response1 = RestClient::Request.execute(
#   method: :get,
#   url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=women',
#   headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
#     "x-rapidapi-key": ENV["NYT_API_KEY"]}
# )

# product_data1 = JSON.parse(response1)["_embedded"]["products"]

# product_data1.each do |dataInfo|

#     Item.create(
#     product_full_name: dataInfo["product_full_name"],
#     original_price: dataInfo["original_price"],
#     category: dataInfo["category"],
#     gender: dataInfo["gender"],
#     purchase_limit: dataInfo["purchase_limit"],
#     description_headline: dataInfo["description_headline"],
#     description_bullets: dataInfo["description_bullets"],
#     image: dataInfo["_links"]["image_large"]["href"]
#   )
# end


# response2 = RestClient::Request.execute(
#   method: :get,
#   url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=kids',
#   headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
#     "x-rapidapi-key": ENV["NYT_API_KEY"]}
# )

# product_data2 = JSON.parse(response2)["_embedded"]["products"]

# product_data2.each do |dataInfo|
  
#     Item.create(
#     product_full_name: dataInfo["product_full_name"],
#     original_price: dataInfo["original_price"],
#     category: dataInfo["category"],
#     gender: dataInfo["gender"],
#     purchase_limit: dataInfo["purchase_limit"],
#     description_headline: dataInfo["description_headline"],
#     description_bullets: dataInfo["description_bullets"],
#     image: dataInfo["_links"]["image_large"]["href"]
#   )
# end
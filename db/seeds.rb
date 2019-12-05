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

response1 = RestClient::Request.execute(
  method: :get,
  url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=women',
  headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
    "x-rapidapi-key": ENV["NYT_API_KEY"]}
)

product_data1 = JSON.parse(response1)["_embedded"]["products"]

product_data1.each do |dataInfo|

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


response3 = RestClient::Request.execute(
  method: :get,
  url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=soccer',
  headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
    "x-rapidapi-key": ENV["NYT_API_KEY"]}
)

product_data3 = JSON.parse(response3)["_embedded"]["products"]

product_data3.each do |dataInfo|
  
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

response2 = RestClient::Request.execute(
  method: :get,
  url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=kids',
  headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
    "x-rapidapi-key": ENV["NYT_API_KEY"]}
)

product_data2 = JSON.parse(response2)["_embedded"]["products"]

product_data2.each do |dataInfo|
  
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

response4 = RestClient::Request.execute(
  method: :get,
  url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=basketball',
  headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
    "x-rapidapi-key": ENV["NYT_API_KEY"]}
)

product_data4 = JSON.parse(response4)["_embedded"]["products"]

product_data4.each do |dataInfo|
  
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

response5 = RestClient::Request.execute(
  method: :get,
  url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=football',
  headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
    "x-rapidapi-key": ENV["NYT_API_KEY"]}
)

product_data5 = JSON.parse(response5)["_embedded"]["products"]

product_data5.each do |dataInfo|
  
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

response6 = RestClient::Request.execute(
  method: :get,
  url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=outdoor',
  headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
    "x-rapidapi-key": ENV["NYT_API_KEY"]}
)

product_data6 = JSON.parse(response6)["_embedded"]["products"]

product_data6.each do |dataInfo|
  
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

response7 = RestClient::Request.execute(
  method: :get,
  url: 'https://apidojo-adidas-v1.p.rapidapi.com/products/v2/list?lang=en-US&limit=1000&url=running',
  headers: {"X-RapidAPI-Host": "apidojo-adidas-v1.p.rapidapi.com",
    "x-rapidapi-key": ENV["NYT_API_KEY"]}
)

product_data7 = JSON.parse(response7)["_embedded"]["products"]

product_data7.each do |dataInfo|
  
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


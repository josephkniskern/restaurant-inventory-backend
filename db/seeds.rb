require 'faker'

Purveyor.destroy_all
Restaurant.destroy_all
Product.destroy_all

Purveyor.create(name: "Steven B's Beef", address: Faker::Address.full_address, product: "meat" )
Purveyor.create(name: "Berry Fresh Produce", address: Faker::Address.full_address, product: "vegetable")
Purveyor.create(name: "Sweet Treat Desserts", address: Faker::Address.full_address, product: "dessert")
Purveyor.create(name: "Scott's Sodas & Drinks", address: Faker::Address.full_address, product: "drink")

Restaurant.create(name: "Chez Osgood")

10.times do 
  name = Faker::Creature::Animal.name
  price = Faker::Number.between(from: 20, to: 100)
  Product.create(name: name, price: price, product_type: "meat")
end

10.times do 
  name = Faker::Food.vegetables
  price = Faker::Number.between(from: 20, to: 100)
  Product.create(name: name, price: price, product_type: "vegetable")
end

10.times do 
  name = Faker::Dessert.variety
  price = Faker::Number.between(from: 20, to: 100)
  Product.create(name: name, price: price, product_type: "dessert")
end

10.times do 
  name = Faker::Beer.brand
  price = Faker::Number.between(from: 20, to: 100)
  Product.create(name: name, price: price, product_type: "drink")
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


puts "Seeding Data ...🌱🌱🌱"

# Customer.create(username: "User1", email: "user1@gmail.com", password: "1234", password_confirmation: "1234",
#     phone: "0123456789", policy: true, picture: "https://th.bing.com/th/id/OIP.SKcexVoRNnffvOMny6sSvAHaDt?pid=ImgDet&rs=1"
# )

# Restaurant.create(name: "Restaurant1", email: "res@gmail.com", password: "1234", password_confirmation: "1234",
#     phone: "0123456789", policy: true, till_num:160580, ambience:"classy", ratings: 4,
#     sales: 0, cuisine: "Chinese", price_range: "$$",
#     picture: "https://th.bing.com/th/id/R.cedfefd8e352d0aa0032a17d67d83c2a?rik=ThkhfDVxcANZHw&pid=ImgRaw&r=0",
#     latitude: -1.298300, longitude: 36.801060
# )

# cat = ['Burgers', 'Fries', 'Sides', 'Main', 'Desserts']
# n = 0
# 5.times do
#     Food.create(
#         name: Faker::Food.dish,
#         price: 100*(n+1),
#         category: cat[n],
#         vegetarian: false,
#         allergen: false,
#         restaurant_id: 1,
#         picture: "https://th.bing.com/th/id/OIP.SKcexVoRNnffvOMny6sSvAHaDt?pid=ImgDet&rs=1",
#         ingredients: Faker::Food.description,
#         discount: 0,
#         sales: n*2,
#         ratings: 4
#     )
#     n+=1
# end

# n = 0
# 2.times do
#     Food.create(
#         name: Faker::Food.dish,
#         price: 250*(n+1),
#         category: cat[n],
#         vegetarian: true,
#         allergen: true,
#         restaurant_id: 1,
#         picture: "https://th.bing.com/th/id/OIP.SKcexVoRNnffvOMny6sSvAHaDt?pid=ImgDet&rs=1",
#         ingredients: Faker::Food.description,
#         discount: 0,
#         sales: (n+1)*3,
#         ratings: 4
#     )
#     n+=1
# end


# 2.times do
#     x = Order.new(
#         items:['cheeseburger','Arepas'],
#         discount: 0,
#         latitude: -1.198300,
#         longitude: 36.801060,
#         restaurant_id: 1,
#         customer_id: 1,
#         food_id: [7,6],
#         service_fee: 50,
#         total: 1200,
#     )
#     if x.valid?
#       x.save
#       p x
#     else
#       p x.errors.full_messages
#     end
# end

#Seed data for the "inventories" table
# inventories_data = [
#   { item: "Potatoes", quantity: 50, restaurant_id: 1 },
#   { item: "Tomatoes", quantity: 30, restaurant_id: 1 },
#   { item: "Carots", quantity: 20, restaurant_id: 1 },
#   { item: "Onions", quantity: 15, restaurant_id: 1 },
# ]

# # Create the inventories records in the database
# inventories_data.each do |inventory_data|
#   Inventory.create!(inventory_data)
# end

# Seed data for the "fav_foods" table
# fav_foods_data = [
#   { customer_id: 1, food_id: 1 },
#   { customer_id: 1, food_id: 2 },
#   { customer_id: 2, food_id: 3 },
#   { customer_id: 2, food_id: 4 },
#   # Add more data as needed
# ]

# # Create the fav_foods records in the database
# fav_foods_data.each do |fav_food_data|
#   FavFood.create!(fav_food_data)
# end

Staff.create!(
    name: "Jeevs",
    title: "manager",
    restaurant_id: 1,
    active: true,
)
Staff.create!(
    name: "Jeevs",
    title: "chef",
    restaurant_id: 1,
    active: true,
)

# OrderTrack.create!(
#     status: "prepping",	
#     order_id: 1,
#     restaurant_id: 1,
#     staff_id: 1,
#     chef_id: 2,
#     paid: true,
#     completed: false,
# )
# OrderTrack.create!(
#     status: "cooking",	
#     order_id: 1,
#     restaurant_id: 1,
#     staff_id: 1,
#     chef_id: 2,
#     paid: true,
#     completed: false,
# )
# OrderTrack.create!(
#     status: "Done",	
#     order_id: 1,
#     restaurant_id: 1,
#     staff_id: 1,
#     chef_id: 2,
#     paid: true,
#     completed: true,
# )

puts "Seeding Data ...✅✅✅"	

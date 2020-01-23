# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PRODUCT
Dish.destroy_all
dish1 = Dish.create({:name => "kare kare", :price => 50})
dish2 = Dish.create({:name => "rice", :price => 10})
dish3 = Dish.create({:name => "adobo", :price => 35})
dish4 = Dish.create({:name => "fish fillet", :price => 50})
dish5 = Dish.create({:name => "fried fish", :price => 45})

# CART
Tray.destroy_all
puts "\nTotal cart count: #{Tray.all.count}"

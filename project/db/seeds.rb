# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PRODUCT
Snack.destroy_all
snack1 = Snack.create({:name=>"chips", :price => 2})
snack2 = Snack.create({:name=>"twix", :price => 3})
snack3 = Snack.create({:name=>"apple", :price => 5.50})
snack4 = Snack.create({:name=>"bannana", :price => 10})
snack5 = Snack.create({:name=>"cheese", :price => 3.20})
snack6 = Snack.create({:name=>"mac n cheese", :price => 2})
snack7 = Snack.create({:name=>"fruit snacks", :price => 4})
snack8 = Snack.create({:name=>"pretzles", :price => 5.50})
snack9 = Snack.create({:name=>"popcorn", :price => 5})
snack10 = Snack.create({:name=>"m&m's", :price => 3.10})
snack11 = Snack.create({:name=>"cookie", :price => 5.50})
snack12 = Snack.create({:name=>"pear", :price => 1.75})

puts "Total number of products: #{Snack.all.count}"
puts "Snack names: #{Snack.all.pluck("name")}"
puts "Snack1: #{snack1.name} price: #{snack1.price.round(2)}"
puts "Snack2: #{snack2.name} price: #{snack2.price.round(2)}"
puts "Snack3: #{snack3.name} price: #{snack3.price.round(2)}"
puts "Snack4: #{snack4.name} price: #{snack4.price.round(2)}"
puts "Snack5: #{snack5.name} price: #{snack5.price.round(2)}"
puts "Snack6: #{snack6.name} price: #{snack6.price.round(2)}"
puts "Snack7: #{snack7.name} price: #{snack7.price.round(2)}"
puts "Snack8: #{snack8.name} price: #{snack8.price.round(2)}"
puts "Snack9: #{snack9.name} price: #{snack9.price.round(2)}"
puts "Snack10: #{snack10.name} price: #{snack10.price.round(2)}"
puts "Snack11: #{snack11.name} price: #{snack11.price.round(2)}"
puts "Snack12: #{snack12.name} price: #{snack12.price.round(2)}"

# CART
#Cart.destroy_all
#puts "\nTotal cart count: #{Cart.all.count}"
require_relative '../setup'

puts "Exercise 1"
puts "----------"

store_burnaby = Store.new(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store_burnaby.save
store_richmond = Store.new(name: "Richmond", annual_revenue: 1260000, womens_apparel: true)
store_richmond.save
store_gastown = Store.new(name: "Gastown", annual_revenue: 190000, mens_apparel: true)
store_gastown.save

puts Store.count()
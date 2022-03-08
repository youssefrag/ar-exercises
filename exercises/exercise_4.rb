require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store_surrey = Store.new(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
store_surrey.save
store_whistler = Store.new(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
store_whistler.save
store_yaletown = Store.new(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
store_yaletown.save

# users = User.where(name: 'David', occupation: 'Code Artist').order(created_at: :desc)

@mens_stores = Store.where(mens_apparel: true)

for store in @mens_stores
  puts store.name
  puts store.annual_revenue
end



@womens_stores = Store.where('annual_revenue < 1000000', womens_apparel: true)

for store in @womens_stores
  puts store.name
  puts store.annual_revenue
end
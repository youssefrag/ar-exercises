require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@revenue_sum = Store.sum(:annual_revenue)
puts @revenue_sum

@revenue_average = Store.average(:annual_revenue)
puts @revenue_average

@revenue_more_than_1000000 = Store.where("annual_revenue > 1000000")
puts @revenue_more_than_1000000.count()
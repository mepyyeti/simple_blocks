#!/usr/bin/env ruby
#blocks_galore1.rb

def adding(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

def subtracting(prices)
  amount = 10
  prices.each do |price|
    amount -= price
  end
  amount
end

def savings(prices)
  total_savings = 0
  prices.each do |price|
    new_price = price * 0.8
    savings = price - new_price
    puts format("your original price: $%.2f." , price)
    puts format("your new price: $%.2f." , new_price)
    total_savings += savings
  end
  total_savings
end

grocery_list = [6,2,1]

print "select 1,2, or 3 >> "
selection = gets.chomp.to_i

if selection == 1
  puts format("your total is: $%.2f", adding(grocery_list))
elsif selection == 2
  puts format("your total is: $%.2f", subtraction(grocery_list))
elsif selection == 3
  puts format("your total savings: $%.2f", savings(grocery_list))
else
  print "goodbye"
end

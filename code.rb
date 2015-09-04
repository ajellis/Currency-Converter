require './currency'



usd = Currency.new(100.00, "USD")
gil = Currency.new(100.00, "USD")
munny = Currency.new(150.00, "Munny")
cash = Currency.new(150.00, "USD")
rupee = Currency.new(100.00, "rupee")





puts usd == gil #should say true
new_currency = usd + gil
puts "#{new_currency.amount} #{new_currency.type}"  # should say 200
new_currency = usd * 0.5
puts "#{new_currency.amount} #{new_currency.type}" # should say 50 USD

puts usd + munny #should raise CodeError

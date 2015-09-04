require './currency'



usd = Currency.new(100.00, "USD")
gil = Currency.new(100.00, "USD")
munny = Currency.new(150.00, "Munny")


puts usd.amount.to_s
puts usd.type

puts gil.amount.to_s
puts gil.type

puts usd == gil
puts usd == munny

require './currency'
require './converter'




# puts @types["USD"]


#
# puts "Do you want to modify currency amounts, or do you want to convert one type of currency to another?"
#
# until
# puts "please type 'M'to modify, or 'C' to convert"
# answer = gets.chomp.upcase
# if answer == "M" || "C"
#   break
# elsif puts "Nope!"
# end
# end











puts "What type of currency are we using?"
type = gets.chomp

puts "How much do you want to convert?"
amount = gets.chomp.to_i

puts "What currency do you want to convert it to?"
convert_to = gets.chomp

converter = Converter.new

converted = converter.convert(amount, type, convert_to)

puts converted
puts "You have #{converted} #{type}."


# puts usd == eur #should say true
# new_currency = usd - eur
# puts "#{new_currency.amount} #{new_currency.type}"  # should say 0
# new_currency = usd * 0.5
# puts "#{new_currency.amount} #{new_currency.type}" # should say 50 USD
#
# puts usd.amount


# puts usd + jpy #should raise CodeError

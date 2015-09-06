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
amount = gets.chomp.to_f

puts "What currency do you want to convert it to?"
convert_to = gets.chomp

converter = Converter.new

converted = converter.convert(amount, type, convert_to)

puts "You have #{converted} #{convert_to}."

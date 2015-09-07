require './currency'
require './converter'






puts "Do you want to modify currency amounts, or do you want to convert one type of currency to another?"
answer = 0
until answer == "M" || "C"

puts "please type 'M'to modify, or 'C' to convert"
answer = gets.chomp.upcase
  end
elsif puts "Nope!"
end
end




def modify
  puts "Gimme some math! (ex. $123.45 + $987.65)"
  math = gets.chomp

  math.split(" ")
  first_amount = math[0]
  operator = math[1]
  second_amount = math[2]
  first_amount = Currency.new(first_amount)
  second_amount = Currency.new(second_amount)
  if operator == "+"
    puts first_amount + second_amount
  elsif operator == "-"
    puts first_amount - second_amount
  elsif operator == "*"
    puts first_amount * second_amount
  elsif operator == "/"
    puts first_amount / second_amount
  end
end

def conversion

puts "What type of currency are we using?"
type = gets.chomp

puts "How much do you want to convert?"
amount = gets.chomp.to_f

puts "What currency do you want to convert it to?"
convert_to = gets.chomp

converter = Converter.new

converted = converter.convert(amount, type, convert_to)

puts "You have #{converted} #{convert_to}."

end

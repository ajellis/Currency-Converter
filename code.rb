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

  math.split
  first_amount = math[0]
  operator = math[1]
  second_amount = math[2]
  Currency.new(first_amount[0], first_amount[1..-1])
end

  type = 0
  until @rates.keys.include? type
    puts "What currency are we using?"
    type = gets.chomp
  end

  amount = 0
  until amount != 0
    puts "How much do you currently have?"
    amount = gets.chomp.to_i
  end

  modify = 0
  until modify == "+" || "-" || "*" || "/"
    puts "Are we adding currency (+), subtracting currency (-), multiplying (*), or dividing (/)?"
    modify = gets.chomp
  end


  amount2 = 0
  until amount2 != 0
    puts "How much are you adding to it?"
    amount2 = gets.chomp.to_i

    puts "You now have "
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

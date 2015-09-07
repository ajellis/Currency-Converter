require './currency'
require './converter'

class CurrencyConverter

  def convert_currency
      puts "Do you want to modify currency amounts, or do you want to convert one type of currency to another?"
      answer = nil
      until answer == "M" || answer == "C"
        puts "please type 'M'to modify, or 'C' to convert"
        answer = gets.chomp.upcase
      end
      if answer == "M"
        modify
      else
        convert
      end
  end

  def modify
    puts "Gimme some math! (ex. $123.45 + $987.65)"
    math = gets.chomp

    math = math.split(" ")
    first_amount = math[0]
    operator = math[1]
    second_amount = math[2]
    first_amount = Currency.new(first_amount)
    if operator == "+"
      second_amount = Currency.new(second_amount)
      new_currency = first_amount + second_amount
      puts "#{new_currency.amount} #{new_currency.type}"
    elsif operator == "-"
      second_amount = Currency.new(second_amount)
      new_currency = first_amount - second_amount
      puts "#{new_currency.amount} #{new_currency.type}"
    elsif operator == "*"
      new_currency = first_amount * second_amount
      puts "#{new_currency.amount} #{new_currency.type}"
    elsif operator == "/"
      new_currency = first_amount / second_amount
      puts "#{new_currency.amount} #{new_currency.type}"
    end
  end

  def convert
    puts "What type of currency are we using?"
    type = gets.chomp.upcase
    puts "How much do you want to convert?"
    amount = gets.chomp.to_f
    puts "What currency do you want to convert it to?"
    convert_to = gets.chomp.upcase
    converter = Converter.new
    converted = converter.convert(amount, type, convert_to)
    puts "You have #{converted} #{convert_to}."
  end

end

CurrencyConverter.new.convert_currency

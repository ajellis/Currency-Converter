require './currency'


class Converter
  attr_reader :amount, :type

def initialize
  @rates = {"USD" => 1.0, "EUR" => 0.89}
end

def convert(amount, type, convert_to)
  amount * @rates[convert_to]
end


# @types["USD"]


end


# , "JPY": 119.100, "GBP": 0.69854, "AUD": 1.44563

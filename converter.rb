require './currency'


class Converter

  def initialize
    @rates = {"USD" => 1.0, "EUR" => 0.89, "GBP" => 0.65, "JPY" => 119.08}
  end

  def convert(amount, type, convert_to)
    (amount / @rates[type]) * @rates[convert_to]
  end


end

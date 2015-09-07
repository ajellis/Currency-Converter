require './currency'
require './unknown_currency_code_error'

class Converter

  def initialize
    @rates = {"USD" => 1.0, "EUR" => 0.89, "GBP" => 0.65, "JPY" => 119.08}
  end

  def convert(amount, type, convert_to)
    if @rates[type] == nil || @rates[convert_to] == nil
      raise UnknownCurrencyCodeError
    else
      (amount / @rates[type]) * @rates[convert_to]
    end
  end


end

require './code_error'
class Currency

  attr_reader :amount, :type

  def initialize(type, amount)
    @amount = amount
    @type = type
    @symbols = {"$" => "USD", "€" => "EUR", "¥" => "JPY", "£" => "GBP"}
  end

  def amount
    @amount
  end

  def type
    @type
  end

  def ==(currency)
    @type == currency.type && @amount == currency.amount
    # if @type == currency.type && @amount == currency.amount
    #   true
    # else
    #   puts "Error: DifferentCurrencyCode"
    # end
  end

  def +(currency)
    if @type == currency.type
      Currency.new(@amount + currency.amount, @type)
    else
      raise CodeError, 'Different Currency Code'
    end
  end

  def -(currency)
    if @type == currency.type
      Currency.new(@amount - currency.amount, @type)
    else
      raise CodeError, 'Different Currency Code'
    end
  end

  def *(ratio)
      Currency.new(@amount * ratio, @type)
  end


end

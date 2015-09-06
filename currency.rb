require './code_error'
class Currency

  attr_reader :amount, :type

  def initialize(type = nil, amount)
    @amount = amount

    if type == nil
      find_type(amount)
    else
      @type = type
    end
  end

  def find_type(amount)
    symbols = {"$" => "USD", "€" => "EUR", "¥" => "JPY", "£" => "GBP"}
    @type =symbols[amount[0]]
  end

  def amount
    @amount
  end

  def type
    @type
  end

  def ==(currency)
    @type == currency.type && @amount == currency.amount
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

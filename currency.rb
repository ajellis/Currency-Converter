require './code_error'
class Currency

  attr_reader :amount, :type

  def initialize(amount, type = nil)

    if type == nil
      find_type(amount)
    else
      @type = type
      @amount = amount.to_f
    end
  end

  def find_type(amount)
    symbols = {"$" => "USD", "€" => "EUR", "¥" => "JPY", "£" => "GBP"}
    @type =symbols[amount[0]]
    @amount = amount[1..-1].to_f
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
      Currency.new(@amount * ratio.to_f, @type)
  end

  def /(ratio)
    Currency.new(@amount / ratio.to_f, @type)
  end


end

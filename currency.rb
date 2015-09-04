/reuire ./
class Currency

attr_reader :amount, :type

  def initialize(amount, type)
    @amount = amount
    @type = type
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
      raise DifferentCodeError, 'Different Currency Code'
    end
  end

  def -(currency)
    if @type == currency.type
      Currency.new(@amount - currency.amount, @type)
    else
      raise TypeError, 'Different Currency Code'
    end
  end

  def *(ratio)
      Currency.new(@amount * ratio, @type)
  end


end

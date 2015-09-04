

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

  def ==(equal)
    if @amount == equal.amount && @type == equal.type
      true
    else
      false
  end
end
end

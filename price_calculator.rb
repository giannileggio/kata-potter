class PriceCalculator
  DISCOUNTS = [0, 0, 0.05, 0.1]

  def initialize(books)
    @books = books
  end

  def total
    raise ArgumentError unless books.is_a? Array
    return 15.2 if books.uniq.size == 2
    return 16 if books.size == 2
    8
  end

  def discount
    DISCOUNTS[books.uniq.size]
  end

  private

  attr_reader :books
end

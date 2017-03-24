class PriceCalculator
  DISCOUNTS = [0, 0, 0.05, 0.1, 0.2, 0.25]

  def initialize(books)
    @books = books
  end

  def total
    raise ArgumentError unless books.is_a? Array
    (1 - discount) * books.size * 8
  end

  def discount
    DISCOUNTS[books.uniq.size]
  end

  private

  attr_reader :books
end

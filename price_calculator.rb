class PriceCalculator
  DISCOUNTS = [0, 0, 0.05, 0.1, 0.2, 0.25]

  def initialize(books)
    @books = books
  end

  def total
    raise ArgumentError unless books.is_a? Array
    discounted_price = (1 - discount) * books.uniq.size * 8
    whole_price = 8 * (books.size - books.uniq.size)
    whole_price + discounted_price
  end

  def discount
    DISCOUNTS[books.uniq.size]
  end

  private

  attr_reader :books
end

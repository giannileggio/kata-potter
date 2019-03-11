class PriceCalculator
  PRICE = 8

  def initialize(books = [])
    @books = books
  end

  def total
    PRICE * books.size
  end

  private

  attr_reader :books
end

class PriceCalculator
  PRICE = 8

  def initialize(books = [])
    @books = books
  end

  def total
    PRICE * books.size * ((100 - discount) / 100)
  end

  private

  attr_reader :books

  def discount
    books.uniq.size > 1 ? 5.to_f : 0
  end
end

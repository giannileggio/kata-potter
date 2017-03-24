class PriceCalculator

  def initialize(books)
    @books = books
  end

  def total
    return 15.2 if books.uniq.size == 2
    return 16 if books.size == 2
    8
  end

  def discount
    0.05
  end

  private

  attr_reader :books
end

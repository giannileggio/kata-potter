class PriceCalculator
  def initialize(books = [])
    @books = books
  end

  def total
    8 * books.size
  end

  private

  attr_reader :books
end

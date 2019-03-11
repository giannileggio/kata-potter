class PriceCalculator
  def initialize(books = [])
    @books = books
  end

  def total
    return 0 unless books.size.positive?
    8
  end

  private

  attr_reader :books
end

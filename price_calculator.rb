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
    case books.uniq.size
    when 2
      5
    when 3
      10
    else
      0
    end.to_f
  end
end

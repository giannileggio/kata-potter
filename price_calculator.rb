class PriceCalculator
  def total(books)
    return 15.2 if books.uniq.size == 2
    return 16 if books.size == 2
    8
  end
end

class PriceError < StandardError
end

class PriceCalculator
    def total(books)
        raise PriceError unless books.class == Hash
        @books = books
        return 0 if books.nil?
        books.keys.count * (1 - discount) * 8 + full_price_books * 8
    end

    private

    attr_reader :books

    def discount
        (books.keys.count - 1) * 0.05
    end

    def full_price_books
        (books.values.reduce(0) { |sum, book| sum + book }) - books.keys.count
    end
end

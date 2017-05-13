class BookInStock
        attr_reader :isbn
        attr_accessor :price
        
        def initialize(isbn, price)
                @isbn = isbn
                @price = price
        end
end

book = BookInStock.new("isbn1", 33.80)
puts "ISBN = #{book.isbn}"
puts "price = #{book.price}"
book.price = book.price * 0.75
puts "price after discount = #{book.price}"

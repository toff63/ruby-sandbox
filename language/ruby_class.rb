class BookInStock

  attr_reader :isbn, :price # generates getters for thos attributes
  attr_accessor :price # generates cetters

  def initialize(isbn, price)
    @isbn = isbn # this creates an instance variable
    @price = Float(price)
  end

  # Equivalent to toString in java
  def to_s
    "ISBN: #{@isbn}, price #{price}"
  end
end

require 'csv'

class CSVReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(cvs_file_name)
    CSV.foreach(csv_file_name, header: true) do |row|
      @books_in_stock << BookInStock.new(row['ISBN'], row['Amount'])
    end
  end
end

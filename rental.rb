class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, person, book)
    @date = date
    @person = person
    person.add_rental(self)
    @book = book
    book.add_rental(self)
  end
end

book1 = Book.new('The Hobbit', 'J.R.R. Tolkien')
p book1

Rental.new('2019-01-01')

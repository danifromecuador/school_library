class Rental
  attr_accessor :date, :person, :book

  @all_rentals = []
  def initialize(date, person, book)
    @date = date
    @person = person
    person.add_rental(self)
    @book = book
    book.add_rental(self)
    @all_rentals << self
  end

  def self.all
    @all_rentals
  end
end

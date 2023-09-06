class Rental
  attr_accessor :date, :person, :book, :rentals

  @all_rentals = []
  def initialize(date, person, book)
    @date = date
    @person = person
    person.add_rental(self)
    @book = book
    book.add_rental(self)
    self.class.all_rentals.push(self)
  end

  class << self
    attr_reader :all_rentals
  end

  def self.all
    @all_rentals
  end
end

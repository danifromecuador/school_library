class Book
  attr_accessor :title, :author, :rentals

  @all_books = []
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @all_books << self
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  def self.all
    @all_books
  end
end

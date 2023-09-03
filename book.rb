class Book
  attr_accessor :title, :author, :rentals

  @all_books = []

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    self.class.all_books.push(self)
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  class << self
    attr_reader :all_books
  end

  def self.all
    @all_books
  end
end

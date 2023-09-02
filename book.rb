class Book
  attr_accessor :title, :author, :rentals

  @all_books = [] # Use a class instance variable to store all books

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    self.class.all_books.push(self) # Use the class instance variable to store each book instance
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  class << self
    attr_reader :all_books
  end

  def self.all
    @all_books # Access the class instance variable to retrieve all books
  end
end

Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
Book.new('The Catcher in the Rye', 'J.D. Salinger')

# Print all books using the class method
puts 'All Books:'
Book.all.each do |book|
  puts "Title: #{book.title}, Author: #{book.author}"
end

#!/usr/bin/env ruby
require_relative 'app'

def main
  menu_text = <<~MENU

    Welcome to School Library App!

    Please select an option by entering a number:
    1. List all books
    2. List all people
    3. Create a person
    4. Create a book
    5. Create a rental
    6. List all rentals for a given person id
    7. Exit

  MENU

  puts menu_text
  user_input = gets.chomp.to_i

  if (user_input == 3)
    create_a_person
  end
end

main()
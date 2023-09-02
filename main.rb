#!/usr/bin/env ruby
require_relative 'app'

def main
  p "Welcome to School Library App!"
  p
  loop do
    menu_text = <<~MENU

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

    case user_input
    when 1
    when 2
      list_all_people
    when 3
      create_a_person
    when 4
      create_a_book
    when 5
    when 6
    when 7
      p "Thank you for using School Library App!"
      break
    else
      puts "Invalid option. Please select a valid option (1-7)."
    end
  end
end

main()

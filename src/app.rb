require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

def list_all_books
  Book.all.each do |book|
    p "[Book] Title: #{book.title}, Author: #{book.author}"
  end
end

def all_people_list
  people = []
  people.concat(Student.all)
  people.concat(Teacher.all)
  people
end

def list_all_people
  all_people = all_people_list
  all_people.each do |person|
    if person.instance_of?(Student)
      p "[Student] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    else
      p "[Teacher] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end
end

def create_a_person
  print 'Do you want to create a student(1) or a teacher(2)?: '
  user_input = gets.chomp.to_i
  if user_input != 1 && user_input != 2
    create_a_person
  end

  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp
  if user_input == 1
    create_student(age, name)
  else
    Teacher.new(age, name)
  end
end

def create_student(age, name)
  print 'Has parent permission? (y/n): '
  has_permission = gets.chomp.downcase
  if has_permission == 'y'
    permission = true
  elsif has_permission == 'n'
    permission = false
  else
    create_student(age, name)
  end
  Student.new(age, name, classroom="Unknown", permission)
end

def create_a_book
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  Book.new(title, author)
  p 'Book created sucessfully!'
end

def create_a_rental
  all_people = all_people_list
  puts 'Select a book from the following list by number'
  Book.all.each_with_index do |book, index|
    puts "#{index}) Title: #{book.title}, Author: #{book.author}"
  end
  book_index = gets.chomp.to_i
  puts 'Select a person from the following list by number (not id)'
  all_people.each_with_index do |person, index|
    puts "#{index}) Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
  person_index = gets.chomp.to_i
  print 'Date: '
  date = gets.chomp
  selected_person = all_people[person_index]
  selected_book = Book.all[book_index]
  return unless selected_person && selected_book

  Rental.new(date, selected_person, selected_book)
  puts 'Rental created successfully!'
end

def rental_person_id
  all_people = all_people_list
  puts 'ID of person: '
  person_id = gets.chomp.to_i
  person = all_people.find { |p| p.id == person_id }
  if person
    puts 'Rentals: '
    person.rentals.each do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}"
    end
  else
    puts 'Person not found'
  end
end

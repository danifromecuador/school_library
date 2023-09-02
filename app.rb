require_relative 'student'
require_relative 'teacher'
require_relative 'book'

def list_all_books
  Book.all.each do |book|
    p "[Book] Title: #{book.title}, Author: #{book.author}"
  end
end

def list_all_people
  Student.all.each do |student|
    p "[Sudent] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}"
  end
  Teacher.all.each do |teacher|
    p "[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}"
  end
end

def create_a_person
  p "Do you want to create a student (1) or a teacher (2)? [Input the number]: "
  user_input = gets.chomp.to_i
  if (user_input == 1)
    print "Age: "
    age = gets.chomp.to_i
    print "Name: "
    name = gets.chomp
    print "Has parent permission? (y/n): "
    has_permission = gets.chomp
    if (has_permission == "y")
      permission = true
    else
      permission = false
    end
    classroom = "unknown"
    Student.new(age, name, classroom, permission)
    p "Person created sucessfully!"

  elsif (user_input == 2)
    print "Age: "
    age = gets.chomp.to_i
    print "Name: "
    name = gets.chomp
    print "Specialization: "
    specialization = gets.chomp
    t1 = Teacher.new(age, specialization, name, true)
    p t1
    p "Person created sucessfully!"
  end
end

def create_a_book
  print "Title: "
  title = gets.chomp
  print "Author: "
  author = gets.chomp
  Book.new(title, author)
  p "Book created sucessfully!"
end


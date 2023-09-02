require_relative 'student'
require_relative 'teacher'

def create_a_person
  p "Do you want to create a student (1) or a teacher (2)? [Input the number]: "
  user_input = gets.chomp.to_i
  if (user_input == 1)
    p "Age: "
    age = gets.chomp.to_i
    p "Name: "
    name = gets.chomp
    p "Has parent permission? (y/n): "
    has_permission = gets.chomp
    if (has_permission == "y")
      permission = true
    else
      permission = false
    end
    classroom = "unknown"
    name = Student.new(age, name, classroom, permission)
    p "You have created a student sucessfully!"
  end
  p name
end

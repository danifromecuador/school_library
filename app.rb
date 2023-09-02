require_relative 'student'
require_relative 'teacher'

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
  end
end

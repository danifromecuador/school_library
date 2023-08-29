require_relative 'Person'

class Student < Person

  def initialize(age, classroom, name="Unknown", parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  attr_accessor :classroom

  def play_hooky
    "¯\(ツ)/¯"
  end
  
end

student = Student.new(20, "B", "Juan", false)
p [student.id, student.name, student.age, student.classroom, student.can_use_services?, student.play_hooky]

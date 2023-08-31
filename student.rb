require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, classroom = 'unknown', permission: true)
    super(age, name, permission: permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student1 = Student.new(10, 'John')
student2 = Student.new(12, 'Jane')
class1 = Classroom.new('B')
class2 = Classroom.new('A')

class1.add_student(student1)
class1.add_student(student2)

p student1.classroom.label # => "B"
p student2.classroom.label # => "B"

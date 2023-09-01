require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom

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

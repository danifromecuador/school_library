require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom

  @all_students = []
  def initialize(age, name, classroom = 'unknown', permission: true)
    super(age, name, permission: permission)
    @classroom = classroom
    @all_students << self
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.push(self) unless classroom.students.include?(self)
  end

  def self.all
    @all_students
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

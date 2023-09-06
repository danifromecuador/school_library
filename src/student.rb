require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom, :permission, :id, :name, :age

  @all_students = []
  def initialize(name, age, permission, classroom = 'unknown')
    super(name, age, permission)
    @classroom = classroom
    self.class.all_students.push(self)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.push(self) unless classroom.students.include?(self)
  end

  class << self
    attr_reader :all_students
  end

  def self.all
    @all_students
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

require_relative 'person'

class Student < Person
  def initialize(age, classroom = 'unknown', name = 'Unknown', permission: true)
    super(age, name, permission: permission)
    @classroom = classroom
  end

  attr_accessor :classroom

  def play_hooky
    '¯(ツ)/¯'
  end
end

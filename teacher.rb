require_relative 'person'

class Teacher < Person
  attr_accessor :specialization
  @@all_teachers = []
  def initialize(age, specialization, name = 'Unknown', permission = true)
    super(age, name, permission: permission)
    @specialization = specialization
    @@all_teachers << self
  end

  def can_use_services?
    true
  end

  def self.all
    @@all_teachers
  end
end

require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  @all_teachers = []
  def initialize(age, specialization, permission, name = 'Unknown')
    super(age, name, permission)
    @specialization = specialization
    self.class.all_teachers.push(self)
  end

  def can_use_services?
    true
  end

  class << self
    attr_reader :all_teachers
  end

  def self.all
    @all_teachers
  end
end

require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', permission: true)
    super(age, name, permission: permission)
    @specialization = specialization
  end

  attr_accessor :specialization

  def can_use_services?
    true
  end
end

require_relative 'Person'

class Teacher < Person

  def initialize(age, name="Unknown", specialization)
   super(age, name)
    @specialization = specialization
  end

  attr_accessor :specialization

  def can_use_services?
    true
  end

end


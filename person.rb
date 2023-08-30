require_relative 'nameable'

class Person
  def initialize(age, name = 'Unknown', permission: true)
    @id = rand(1000)
    @name = name
    @age = age
    @permission = permission
    @nameable = Nameable.new
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    of_age? || @permission
  end

  def correct_name
    name
  end
  
  private

  def of_age?
    age >= 18
  end
end

require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

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

person = Person.new(22, 'maximilianus')
p person.correct_name

capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name

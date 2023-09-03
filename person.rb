require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
require_relative 'rental'
require_relative 'book'

class Person
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name, permission)
    @id = rand(1000)
    @name = name
    @age = age
    @permission = permission
    @nameable = Nameable.new
    @rentals = []
  end

  def can_use_services?
    of_age? || @permission
  end

  def correct_name
    name
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  private

  def of_age?
    age >= 18
  end
end

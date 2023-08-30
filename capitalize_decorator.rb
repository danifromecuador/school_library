require_relative 'decorator'

class CapitalizeDecorator
  def initialize(person)
    @decorator = Decorator.new
    @person = person
  end
  attr_accessor :person

  def correct_name
    person.correct_name.capitalize
  end
end

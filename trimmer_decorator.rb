require_relative 'decorator'

class TrimmerDecorator
  def initialize(person)
    @decorator = Decorator.new
    @person = person
  end
  attr_accessor :person

  def correct_name
    person.correct_name.slice(0, 10)
  end
end

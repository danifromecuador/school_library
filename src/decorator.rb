require_relative 'nameable'

class Decorator
  def initialize
    @nameable = Nameable.new
  end

  def correct_name
    @nameable.correct_name
  end
end

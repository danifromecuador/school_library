class Person
  # This class will not work unless change : for = in parent_permission, but doing that a linter error will appear
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    age >= 18
  end
end

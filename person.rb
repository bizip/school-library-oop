class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  def of_age?
    @age >= 10
  end

  private :of_age?

  def can_use_services?
    @age >= 18 || @parent_permission
  end
end

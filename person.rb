require './Nameble'
require "./CapitalizeDecorator"
class Person < Nameble
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  def correct_name
    @name
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  private

  def of_age?
    @age >= 10
  end
end

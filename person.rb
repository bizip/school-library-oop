require_relative 'nameble'
require_relative 'capitalizedecorator'
require_relative 'trimerdecorator'

class Person < Nameble
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @age = age
    @parent_permission = parent_permission
    @name = name
    @rentals = []
  end

  def correct_name
    @name
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 10
  end
end
person = Person.new(22, 'maximilianus')
person.correct_name
capitalizedperson = CapitalizeDecorator.new(person)
capitalizedperson.correct_name
capitalizedtrimmedperson = TrimmerDecorator.new(capitalizedperson)
capitalizedtrimmedperson.correct_name

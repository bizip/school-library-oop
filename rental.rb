class Rental
  attr_accessor :date, :person, :book

  def initialize(date, book, person)
    @date = date
    @person = person
    @book = book
    person.rentals << self
    book.rental << self
  end
end

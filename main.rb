require './app'

def main
  books = []
  student = []
  people = []
  rental = []
  option(books, student, people, rental)
end

def start_up
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Ceate a new book'
  puts '5 - Ceate a new rental'
  puts '6 - List all rental for given ID'
  puts '7 - Exit'
end

def grab_choice(choice, books, people, rental)
  case choice
  when '1'
    puts 'list of all books :'
    display_list_of(books)
  when '2'
    puts 'List of all people:'
    display_list_of_people(people)
  when '3'
    add_new_person(people)
  when '4'
    add_new_book(books)
  when '5'
    add_new_rental(books, _student, people, rental)
  when '6'
    get_rentals_by_id(rental)
  end
end

puts 'Welcome to the school library app!'
puts
def option(books, student, people, rental)
  attempts = 1
  while attempts < 7
    start_up
    choice = gets.chomp
    grab_choice(choice, books, student, people, rental)
    nex_choice = gets.chomp
    puts nex_choice
    attempts += 1
  end
end
main

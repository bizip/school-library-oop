require('./book')
require('./student')
require('./teacher')
# require('./rental')
def display_list_of(books)
  if books.empty?
    puts 'The is no book for now'
  else
    books.each { |list| puts "The book title is #{list.title} and the title is #{list.author} " }
  end
end

def add_new_book(books)
  puts 'Please enter the title of a Book'
  title = gets.chomp
  puts 'Please enter the author'
  author = gets.chomp
  books.push(Book.new(title, author))
  puts 'New book created'
end

def case_number_one
  puts "Let's create a student"
  puts 'Enter the name:'
  name = gets.chomp
  puts 'Enter the age:'
  age = gets.chomp
  puts 'Do you have a parent permission? [Y/N]'
  permission = gets.chomp
  parent_permission = true if permission == 'Y'
  parent_permission = false if permission == 'N'
  people.push(Student.new(nil, name, age, parent_permission: parent_permission))
  puts 'student sreated successful'
end

def display_list_of_people(people)
  if people.empty?
    puts 'The list of people is empty'
  else
    people.each { |person| puts "Name: #{person.name} age: #{person.age} parent #{permission}" }
  end
end

def add_new_person(people)
  puts 'Do you whant to create a student (1) or a teacher (2):'
  input = gets.chomp.to_i
  case input
  when 1
    case_number_one
  when 2
    puts 'Enter your specialization:'
    specialization = gets.chomp
    people.push(Teacher.new(specialization, age, name))
    puts 'teacher created successful'
  end
end

def add_new_rental(books, _student, people, _rental)
  puts 'Choose a book from the list'
  books.map.with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
  selected_book = gets.chomp.to_i

  puts 'Choose the person from the list:'
  people.map.with_index do |person, index|
    puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end

  selected_person = gets.chomp.to_i

  print 'Date: '
  provided_date = gets.chomp

  rentals.push(Rental.new(provided_date, people[selected_person], books[selected_book]))
  puts 'Rental created successfully.'
end

def get_rentals_by_id(rental)
  puts 'Please enter the person Id'
  person_id = gets.chomp.to_i
  rental.map do |rentals|
    if rentals.person.id == person_id
      puts "Date: #{rentals.date}, Book: #{rentals.book.title} by #{rentals.book.author}"
    end
  end
end

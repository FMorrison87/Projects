puts 'Hello there, and what\'s your first name?'
first_name = gets.chomp

puts 'What is your middle name?'
middle_name = gets.chomp

puts 'What is your last name?'
last_name = gets.chomp

full_name = first_name + ' ' + middle_name + ' ' + last_name

puts 'Your name is ' + full_name + '? What a lovely name!'

puts 'Pleased to meet you, ' + full_name + '. :)'
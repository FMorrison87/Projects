puts 'What year where you born?'
yearBorn = gets.chomp

puts 'What month where you born? (Give me a number)'
monthBorn = gets.chomp

puts 'What day where you born?'
dayBorn = gets.chomp

puts 'I see. So you were born on:'
birthday = Time.mktime(yearBorn, monthBorn, dayBorn)
puts birthday

todayDate = Time.new

puts ' '
puts 'So this is how old you are?'
howOld =  ((todayDate - birthday)/60/60/24/7/52)
puts howOld

answer1 = gets.chomp.downcase

if answer1 == 'yes'
	puts ' '
	puts 'Cool! Let\'s make it a little less exact.'
	puts howOld.to_i
else
	puts 'Oh, guess I got it wrong. Or you don\'t know how old you are!'
end

puts ' '
puts 'Do you like surprises?'
answer2 = gets.chomp.downcase
def spank numberOfSpanks
		puts 'SPANK! ' * numberOfSpanks
	end

if answer2 == 'yes'
	puts ' '
	puts 'Good.'
	spank howOld.to_i
	puts ' '
	puts 'One spank for each year you were on earth! I bet your butt is sore now.'
else
	puts 'Oh, you don\'t like surprises. :('
end
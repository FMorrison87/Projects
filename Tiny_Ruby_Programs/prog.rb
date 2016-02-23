#Fave Number...PSYCH! Program
#puts 'What is your favorite number?'
#fav_num = gets.chomp


#puts 'Your favorite number is ' + fav_num + '?'
#better_num = fav_num.to_i + 1
#puts 'Hmm, why not ' + better_num.to_s + '?'

# Deaf Grandma Program
year = rand(1930..1950)
Say1 = ''
Say2 = ''
Say3 = ''

while (Say1 != 'BYE' || Say2 != 'BYE' || Say3 != 'BYE')
	while Say1 != 'BYE'
		Say1 = gets.chomp
	if Say1 == Say1.upcase
		puts 'WHAT? NO, NOT SINCE ' + year.to_s + '.'
	else 
		puts 'SPEAK UP, I CAN\'T HEAR YOU!'
	end
end

puts 'Leaving so soon?'

	while Say2 != 'BYE'
		Say2 = gets.chomp
	if Say2 == Say2.upcase
		puts 'WHAT? NO, NOT SINCE ' + year.to_s + '.'
	else 
		puts 'SPEAK UP, I CAN\'T HEAR YOU!'
	end
end

puts 'Leaving so soon?'


	while Say3 != 'BYE'
		Say3 = gets.chomp
	if Say3 == Say1.upcase
		puts 'WHAT? NO, NOT SINCE ' + year.to_s + '.'
	else 
		puts 'SPEAK UP, I CAN\'T HEAR YOU!'
	end
end

puts 'Leaving so soon?'

end
puts 'See you later, dearie!'
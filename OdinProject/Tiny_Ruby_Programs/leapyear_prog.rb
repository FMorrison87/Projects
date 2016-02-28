puts 'What year do you want to start?'
	YearStart = gets.chomp.to_i
puts 'What year do you want to end?'
	YearEnd = gets.chomp.to_i
puts ''

while YearStart.to_i != YearEnd.to_i
	if YearStart.to_i % 4 == 0
		puts YearStart
	elsif (YearStart.to_i % 100 == 0 || YearStart.to_i % 400 == 0)
		puts YearStart
	end
	YearStart =YearStart.to_i + 1
end
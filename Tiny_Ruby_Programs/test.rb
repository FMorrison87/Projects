puts 'Why are you in my office?'

reply = gets.chomp

puts 'WHADDYA MEAN ' + "'" + reply.upcase + "'" + '?!? YOU\'RE FIRED!'

linewidth = 50

puts 'Table of Contents'.center linewidth
puts 'Chapter 1: Numbers'.ljust(linewidth/2) + 'page 1'.rjust(linewidth/2)
puts 'Chapter 2: Numbers'.ljust(linewidth/2) + 'page 72'.rjust(linewidth/2)
puts 'Chapter 3: Numbers'.ljust(linewidth/2) + 'page 118'.rjust(linewidth/2)

command = gets.chomp

while command != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'


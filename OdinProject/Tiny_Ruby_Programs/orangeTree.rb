class OrangeTree
	def initialize
		@currentHeight = 0
		@age = 0
		@orangesOnTree = 0
		@orangesInBasket = 0
	end

	def height
		@currentHeight
	end

	def age
		@age
	end

	def basket
		puts 'There are ' + @orangesInBasket.to_s + ' oranges in your basket!'
	end

	def waitAYear number
		number.times do
			@orangesOnTree = @orangesOnTree - @orangesOnTree
		@currentHeight = @currentHeight + 2
		@age = @age + 1
		if @age >= 3
			@orangesOnTree = 0
			@orangesOnTree = @orangesOnTree.to_i + (@age.to_i * 2)
		end

		dead?
	end
	end

	def lookAtTree
		puts 'There are currently ' + @orangesOnTree.to_s + ' oranges left on the tree!'
	end

	def pick number
		if @orangesOnTree > 0
			number.times do
				@orangesOnTree = @orangesOnTree.to_i - 1
				@orangesInBasket = @orangesInBasket.to_i + 1
			end
		end
	end

	private

	def dead?
		if @age >= 20
			puts 'The tree lived a long life, but now it is dead.'
			exit
		end
	end
end

tree = OrangeTree.new
tree.waitAYear(18)
puts tree.lookAtTree
tree.pick(2)
puts tree.basket
puts tree.lookAtTree



tree = OrangeTree.new
tree.waitAYear(6)
puts ' '
puts 'Welcome to the orange grove! There is currently one tree here and it is ' + tree.age.to_s + ' years old.'
puts ' '
puts tree.lookAtTree.to_s
puts 'Would you like to pick some?'

answer1 = gets.chomp.downcase

if answer1 == 'yes'
	puts 'Great! How many will you pick?'
	pickNumber = gets.chomp.to_i
	tree.pick(pickNumber)
	puts tree.basket
	puts tree.lookAtTree
else puts 'Ok bye! See you next time!'
	exit
	end

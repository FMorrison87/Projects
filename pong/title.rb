require "bundler/setup"
require "hasu"

Hasu.load "main.rb"

class Pongtitle < Hasu::Window

	WIDTH = 800
	HEIGHT = 600

	def initialize
		super(WIDTH, HEIGHT, false)
	end

	def reset

		@title = 'PONG'
		@title_instructions = 'Press SPACE to start!'
		@player1 = 'Player 1'

		@font_title = Gosu::Font.new(self, "Arial", 80)
		@font_instructions = Gosu::Font.new(self, "Arial", 30)

		@startsound = Gosu::Sample.new(self, "Shut_Down1.wav")
		@startsound.play
	end

	def draw
		@font_instructions.draw(@player, (Pongtitle::WIDTH/2)-100, Pongtitle::HEIGHT/2-80, 0)
		@font_title.draw(@title, (Pongtitle::WIDTH/2)-100, Pongtitle::HEIGHT/2-100, 0)
		@font_instructions.draw(@title_instructions, (Pongtitle::WIDTH/2)-130, Pongtitle::HEIGHT/2+40, 0)
	end

	def update
		
	end

	def button_down(button)
		if button == Gosu::KbSpace
			Pong.run
			close
		end
	end
end

Pongtitle.run
require "bundler/setup"
require "hasu"

Hasu.load "ball.rb"
Hasu.load "paddle.rb"
Hasu.load "winBox.rb"

class Pong < Hasu::Window
	WIDTH = 800
	HEIGHT = 600

	def initialize
		super(WIDTH, HEIGHT, false)
	end

	def reset
		@ball = Ball.new
		@win = Winbox.new

		@left_score = 0
		@right_score = 0

		@right_wins = 'Player 2 WINS!'
		@left_wins = 'Player 1 WINS!'

		@player1 = 'Player 1'
		@player2 = 'Player 2'

		@score1 = 'Score:'
		@score2 = 'Score:'

		@instructions_pause = 'Space = Pause'
		@instructions_new = '\'N\' = New Game'

		@newGameString = 'Press \'N\' for New Game!'
		
		@blip = Gosu::Sample.new(self, "blip.wav")
		@bleep = Gosu::Sample.new(self, "bleep.wav")

		@font_player = Gosu::Font.new(self, "Arial", 30)
		@font_score = Gosu::Font.new(self, "Arial", 30)
		@font_win = Gosu::Font.new(self, "Arial", 30)

		@left = Paddle.new(:left)
		@right = Paddle.new(:right)

		@paused = false
	end

	def draw
		@ball.draw(self)
		
		if @right_score == 10
		#@win.draw(self)
		@font_win.draw(@right_wins, (Pong::WIDTH/2)-90, Pong::HEIGHT/2-20, 0)
		@font_win.draw(@newGameString, (Pong::WIDTH/2)-140, Pong::HEIGHT/2+30, 0)
		end

		if @left_score == 10
		#@win.draw(self)
		@font_win.draw(@left_wins, (Pong::WIDTH/2)-90, Pong::HEIGHT/2-20, 0)
		@font_win.draw(@newGameString, (Pong::WIDTH/2)-140, Pong::HEIGHT/2+30, 0)
		end

		@font_player.draw(@player1, 30, 60, 0)
		@font_player.draw(@player2, WIDTH-140, 60, 0)

		@font_score.draw(@instructions_pause, 30, 520, 0)
		@font_score.draw(@instructions_new, 30, 550, 0)

		@font_score.draw(@score1, 30, 30, 0)
		@font_score.draw(@score2, WIDTH-140, 30, 0)

		@font_score.draw(@left_score, 120, 30, 0)
		@font_score.draw(@right_score, WIDTH-50, 30, 0)

		@left.draw(self)
    	@right.draw(self)
	end

	def update
		@ball.move!

		if @ball.off_left?
			@ball = Ball.new
			@right_score += 1
			@bleep.play
		end

		if @ball.off_right?
			@ball = Ball.new
			@left_score += 1
			@bleep.play
		end

		if button_down?(Gosu::KbUp)
			@right.up!
		else
			if button_down?(Gosu::KbDown)
				@right.down!
			end
		end

		if button_down?(Gosu::KbW)
			@left.up!
		else
			if button_down?(Gosu::KbS)
				@left.down!
			end
		end

		if @ball.intersect?(@left)
			@ball.bounce_off_paddle!(@left)
			@blip.play
		end

		if @ball.intersect?(@right)
			@ball.bounce_off_paddle!(@right)
			@blip.play
		end
		
		if @right_score == 10
			@ball.pause
		end

		if @left_score == 10
			@ball.pause
		end

		if button_down?(Gosu::KbN)
			reset
		end

		if button_down?(Gosu::KbSpace)
			@ball.toggle_pause
		end

	end

	def button_down(button)
		case button
		when Gosu::KbEscape
			close
		end
	end
end

#Pong.run
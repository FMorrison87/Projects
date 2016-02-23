class Winbox
	HEIGHT = 100
	WIDTH = 300

	attr_reader :x, :y

	def initialize
		@x = Pong::WIDTH/2
		@y = Pong::HEIGHT/2
	end

	def x1; @x -WIDTH/2; end
	def y1; @y -HEIGHT/2; end
	def x2; @x +WIDTH/2; end
	def y2; @y +HEIGHT/2; end


	def draw(window)
		color = Gosu::Color::WHITE

		window.draw_quad(
			x1, y1, color,
			x1, y2, color,
			x2, y2, color,
			x2, y1, color,
			)

	end

end

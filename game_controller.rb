$LOAD_PATH << File.dirname(__FILE__)
require 'board'

puts 'Would you like to play a game? (y/n)'
print '>'

game_init_response = gets.chomp
if game_init_response == 'y'
	board = Board.new
else
	puts "I'm sorry, I can't do that."
end

def take_turn
	puts 'Pick a square by indicating its number.'
	print '>'
	turn = gets.chomp
	board.add_turn(turn)
end
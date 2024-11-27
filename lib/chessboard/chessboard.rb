require_relative 'knight_piece'
require 'colorize'
# class for 2D array of board both physical for printing (chessboard) and digital (board)
class ChessBoard
  attr_accessor :board

  def print_chessboard(path)
    path.each do |move|
      (0..7).each do |row|
        (0..7).each do |col|
          if (row == move[0] && col ==  move[0])
            print "   ".on_green
          elsif (row + col).even?
            print "   ".on_black # Black square
          else
            print "   ".on_white # White square
          end
        end
        puts
      end
      puts
    end
  end
end

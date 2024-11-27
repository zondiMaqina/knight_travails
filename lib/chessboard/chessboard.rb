require 'colorize'
# class for 2D array of board both physical for printing (chessboard) and digital (board)
class ChessBoard
  attr_accessor :board
  
  def initialize
    @board = print_chessboard
  end

  def print_chessboard
    (0..7).each do |row|
      (0..7).each do |col|
        if (row + col).even?
          print "   ".on_black # Black square
        else
          print "   ".on_white # White square
        end
      end
      puts
    end
  end
end

p ChessBoard.new.print_chessboard
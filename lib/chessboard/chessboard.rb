require_relative '../vertices_set/nodes'
# class for 2D array of board both physical for printing (chessboard) and digital (board)
class ChessBoard
  attr_accessor :board, :chessboard

  def initialize
    @board = board
  end

  def board
    array = Array.new(8) {[]}
    array.each do |row|
     8.times do
      row << Node.new
     end
    end
  end
end
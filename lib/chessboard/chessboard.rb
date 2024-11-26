require_relative '../vertices_set/nodes'
# class for 2D array of board both physical for printing (chessboard) and digital (board)
class ChessBoard
  attr_accessor :board

  def initialize
    @board = []
  end
end
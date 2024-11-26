require_relative 'vertices_set/item'
require_relative 'vertices_set/nodes'
require_relative 'chessboard/chessboard'

class KnightTravails
  def initialize
    @path_cost = {} # keeps track of paths in traversal
    @queue = [] # keeps track of all valid knight moves
  end
end
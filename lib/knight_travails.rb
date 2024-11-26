require_relative 'vertices_set/item'
require_relative 'vertices_set/node'

class KnightTravails
  def initialize
    @path_cost = {} # keeps track of paths in traversal
    @queue = [] # keeps track of all valid knight moves
  end

  def edges(coordinates)
    x = coordinates[0]
    y = coordinates[1]
    maximum_possible_displacements = [[-2, -1], [-2, 1], [2, -1], [2, 1], [1, -2], [-1, -2], [-1, 2], [1, 2]]
    possible_moves = []
    maximum_possible_displacements.each do |move|
      possible_moves << [x + move[0], y + move[1]] if appropriate(move, x, y)
    end
    possible_moves # returns all possible moves from gievn point
  end

  def appropriate(move, index1, index2)
    # method checks if the maximum possible moves apply to the gievn point
    (index1 + move[0] >= 0 && index1 + move[0] < 8) && (index2 + move[1] >= 0 && index2 + move[1] < 8)
  end
end

travails = KnightTravails.new
p travails.edges([0, 0])
require_relative 'vertices_set/item'
require_relative 'vertices_set/node'

class KnightTravails
  attr_accessor :start, :end, :path_cost
  def initialize
    @start = [0, 0] # default start
    @end = nil # default end
    @path_cost = {@start => ['', '']} # keeps track of paths in traversal
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

  def knight_moves(start, endpoint)
    cost = 0
    set_move(start)
    valid_moves = []
   while !@queue.empty? || @path_cost[endpoint] != nil
    cost += 1
    generate_valid_moves(valid_moves, cost)
    break if @path_cost[endpoint] != nil
   end
   @path_cost
  end

  def generate_valid_moves(valid_moves, cost)
    current_move = @queue.shift
    # returns all next valid moves from current point and saves to array
    valid_moves = edges(current_move.to)
    # adds next possible moves on queue for each node
    valid_moves.each {|next_valid_move| @queue << Item.new(current_move.to, next_valid_move, cost)} 
    valid_moves.each {|move| @path_cost[move] = [current_move.to, cost] if @path_cost[move] == nil}
    valid_moves = []
  end

  def set_move(start)
    # initializes the queue and path_cost with the FIRST node (vertex)
    @queue << Item.new(nil, start, 0) # adds node's previous node and cost to get there
    @path_cost[@start] = [@queue[0].prev, @queue[0].cost]# initializes the first node visited as start
  end
end

travails = KnightTravails.new
p travails.knight_moves([0, 0], [2, 1])
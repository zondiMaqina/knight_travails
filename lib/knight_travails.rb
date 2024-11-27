require_relative 'vertices_set/item'
require_relative 'vertices_set/node'
# class for finding shortest path betwen coordiinates [x, y] -> [i, j]
class KnightTravails
  attr_accessor :start, :path_cost

  def initialize
    @start = [0, 0] # default start
    @path_cost = { @start => ['', ''] } # keeps track of paths in traversal
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
    first_move(start)
    while !@queue.empty? || !@path_cost[endpoint].nil?
      cost += 1
      generate_valid_moves(cost)
      break unless @path_cost[endpoint].nil?
    end
    # tracks back all moves made to destination
    print_path(@path_cost, endpoint, start)
  end

  def generate_valid_moves(cost)
    # pops off first item
    current_move = @queue.shift
    # returns all next valid moves from current point and saves to array
    valid_moves = edges(current_move.to)
    # adds next possible moves on queue for each node
    valid_moves.each do |next_valid_move|
      @queue << Item.new(current_move.to, next_valid_move, cost)
      @path_cost[next_valid_move] = [current_move.to, cost] if @path_cost[next_valid_move].nil?
    end
  end

  def first_move(start)
    # initializes the queue and path_cost with the FIRST node (vertex)
    @queue << Item.new(nil, start, 0) # adds node's previous node and cost to get there
    @path_cost[@start] = [@queue[0].prev, @queue[0].cost] # initializes the first node visited as start
  end

  def print_path(path, endpoint, start)
    @shortest_path = [] # stores all moves used in path
    if !path[endpoint].nil? # traxks moves from end to start
      @shortest_path << endpoint
      until @shortest_path.include?(start)
        @shortest_path << path[endpoint][0]
        endpoint = path[endpoint][0]
      end
      @shortest_path.reverse # returns appropriate path from start to end
    else
      'suggested end point is not available'
    end
  end
end
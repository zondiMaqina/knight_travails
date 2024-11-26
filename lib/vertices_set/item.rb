# Class for keeping data of each edge in queue
class Item
  attr_reader :prev, :to, :cost

  def initialize(prev = nil, to = nil, edges_travelled = 0)
    @prev = prev
    @to = to
    @cost = edges_travelled
  end
end

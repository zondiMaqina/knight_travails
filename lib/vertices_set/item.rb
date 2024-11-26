# Class for keeping data of each edge in queue
class Item
  attr_reader :from, :to, :cost

  def initialize(from = nil, to = nil, edges_travelled = 0)
    @from = from
    @to = to
    @cost = edges_travelled
  end
end

# class for each node (vertex) on grpah
class Node
  attr_accessor :visited, :start

  def initialize
    @visited = false
    @start = false
  end
end

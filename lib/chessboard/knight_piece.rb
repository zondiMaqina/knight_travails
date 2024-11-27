require 'colorize'
# class for knight piece on chessboard
class Knight
  attr_accessor :knight
  def initialize
    @knight = '♞'.colorize(:green)
  end
end

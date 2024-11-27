require 'colorize'
# class for knight piece on chessboard
class Knight
  attr_accessor :knight, :path

  def initialize
    @knight = '♞'.colorize(:green)
  end
end
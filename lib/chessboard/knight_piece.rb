require 'colorize'
# class for knight piece on chessboard
class Knight
  attr_accessor :knight, :path

  def initialize(path)
    @knight = '♞'.colorize(:green)
    @path = path
  end
end
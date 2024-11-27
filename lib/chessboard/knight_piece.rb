require 'colorize'
require_relative '../knight_travails'
# class for knight piece on chessboard
class Knight < KnightTravails
  attr_accessor :knight, :path

  def initialize
    @knight = '♞'.colorize(:green)
    @path = []
  end

  def show_path
    result = @path
    if result.is_a?(Array)
      string = "Nice, you made it in #{result.size - 1} moves "
      result.each do |move|
        string += move.to_s
      end
    end
    string
  end
end

p Knight.new.show_path
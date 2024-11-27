require 'colorize'
# class for knight piece on chessboard
class Knight
  attr_accessor :knight, :path

  def initialize(path)
    @knight = '♞'.colorize(:green)
    @path = path
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
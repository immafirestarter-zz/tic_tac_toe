require_relative 'turn_helper'
class Game

  attr_reader :grid, :turn_helper
  def initialize(turn_helper = Turn_helper.new)
    @turn_helper = turn_helper
    @grid = [0,0,0,0,0,0,0,0,0]
  end

  def add_cross(position)
    @grid.insert(position-1, 'X')
    @grid.delete_at(position)
    @turn_helper.add_turn
  end

  def add_nought(position)
    @grid.insert(position-1, 'O')
    @grid.delete_at(position)
    @turn_helper.add_turn
  end
end

require_relative 'turn_helper'
require_relative 'checker'
class Game

  attr_reader :grid, :turn_helper, :checker

  def initialize(turn_helper = Turn_helper.new, checker = Checker.new)
    @checker = checker
    @turn_helper = turn_helper
    @grid = [0,0,0,0,0,0,0,0,0]
  end

  def add_cross(position)
    @grid.insert(position-1, 'X') && @grid.delete_at(position)
    @turn_helper.add_turn
    @checker.check_result(@grid)
  end

  def add_nought(position)
    @grid.insert(position-1, 'O')
    @grid.delete_at(position)
    @turn_helper.add_turn
  end
end

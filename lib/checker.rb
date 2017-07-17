class Checker

attr_reader :game_end

def initialize
  @game_end = false
end

def check_result(grid)
  if grid[0] == grid[1] && grid[2] == grid[1]
    print 'you win'
    @game_end = true
  end
end
end

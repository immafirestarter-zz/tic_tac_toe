class Turn_helper

  attr_reader :turn_count

    def initialize
      @turn_count = 1
    end

    def add_turn
      if @turn_count <= 8
      @turn_count = @turn_count + 1
      else
      gamecheck
    end


end

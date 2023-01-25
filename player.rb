class Player 
  attr_accessor :lives, :turn, :id
  
  @@players = 0

  def initialize(i)
    @id = i
    @lives = 3
    @turn = false
    @@players += 1
  end

  def lose_life
    @lives -= 1
  end
end
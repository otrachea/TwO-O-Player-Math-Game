class Player

  attr_reader :id, :life

  def initialize(id)
    @id = id
    @life = 3
  end

  def lose_life
    @life -= 1
  end

  def is_dead
    @life == 0
  end

end
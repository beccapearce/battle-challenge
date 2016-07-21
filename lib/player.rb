class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name, :hit_points, :lost

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
    @loser = false
  end

  def receive_damage
    @hit_points -= 10
  end

  def lost?
    @lost = @hit_points <= 0
  end
end

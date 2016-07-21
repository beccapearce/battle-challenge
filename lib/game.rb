class Game

  attr_reader :player_1, :player_2, :players

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @players = [@player_2, @player_1]
  end

  def attack
    @players.first.receive_damage
    @players.reverse!
  end
end

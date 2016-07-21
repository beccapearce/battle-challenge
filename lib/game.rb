class Game

  attr_reader :player_1, :player_2, :players

  def initialize(player_1_name, player_2_name)
    @player_1 = Player.new(player_1_name)
    @player_2 = Player.new(player_2_name)
    @players = [@player_2, @player_1]
  end

  def current_player
    @players.last
  end

  def attack
    @players.first.receive_damage
  end

  def switch_turn
    @players.reverse!
  end

end

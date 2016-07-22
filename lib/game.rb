require_relative 'player'

class Game
  attr_reader :current_turn, :attacking, :opponent

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @opponent = player2
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch_turn(current_turn)
    if @players.index(current_turn) < (@players.length) -1
      @current_turn = @players[@players.index(current_turn) + 1]
    else
      @current_turn = @players[0]
    end
    @opponent = current_turn
  end

  def attack(player)
    player.receive_damage
    @attacking = @current_turn
  end

  def self.create(player_1_name, player_2_name)
    @game = Game.new(player_1_name, player_2_name)
  end

  def self.instance
    @game
  end

end

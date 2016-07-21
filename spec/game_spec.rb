require 'game'

describe Game do

  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#attack' do
    it "Lowers the player's hit points" do
      expect(game.player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#player_1' do
    it "Shows the first player" do
      expect(game.player_1).to be_an_instance_of Player
    end
  end

  describe '#player_2' do
    it "Shows the second player" do
      expect(game.player_2).to be_an_instance_of Player
    end
  end

  describe '#switch_turn' do
    it 'Switches the turn to the other player' do
      game.switch_turn
      expect(game.players).to eq [game.player_1, game.player_2]
    end
  end
end

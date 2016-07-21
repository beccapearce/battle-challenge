require 'game'
require 'player'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#attack' do
    it "Lowers the player's hit points" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it "Shows the first player" do
      #allow(game).to receive(:player_1).and_return player_1
      expect(game.player_1).to be_an_instance_of Player
    end
  end

  describe '#player_2' do
    it "Shows the second player" do
      expect(game.player_2).to be_an_instance_of Player
    end
  end
end

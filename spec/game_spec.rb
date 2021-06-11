require 'game'

describe Game do
let(:player_1) { double :player }
let(:player_2) { double :player }
  it 'takes HP points from players' do
    game = Game.new(player_1, player_2)
    allow(player_2).to receive_messages(hp: 50)
    allow(player_2).to receive(:damage)
    game.attack(player_2)
    expect(player_2.hp).to eq(Player::LIFE - 10)
 end

 it 'takes two players' do
   game = Game.new(player_1, player_2)
   expect(game.player_1).not_to be_nil
   expect(game.player_2).not_to be_nil
 end
end
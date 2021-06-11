require 'player'

RSpec.describe Player do

  it 'has a pre-set name of Warrior' do
    expect(subject.name).to eq('Warrior')
  end

  it 'returns its name when inserted' do
    player = Player.new('Fabio')
    expect(player.name).to eq('Fabio')
  end

  it 'takes away HP points' do
    subject.damage
    expect(subject.hp).to eq(Player::LIFE - 10)
  end
end
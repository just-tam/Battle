require 'player'

describe Player do
  it "Expects player to be instance Player class" do
    player = Player.new('Bart')
    expect(player).to be_an_instance_of Player
  end

  subject(:bart) { Player.new('Bart') }

  describe '#name' do
    it 'returns the name' do
      expect(bart.name).to eq 'Bart'
    end
  end
end

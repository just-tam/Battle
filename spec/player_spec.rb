require 'player'

describe Player do
  subject(:bart) { Player.new('Bart') }
  subject(:lisa) { Player.new('Lisa') }

  describe '#name' do
    it 'returns the name' do
      expect(bart.name).to eq 'Bart'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(bart.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { bart.receive_damage }.to change { bart.hit_points }.by(-10)
    end
  end
end

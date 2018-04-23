require 'airport.rb'
require 'plane.rb'

describe Airport do

  it { is_expected.to respond_to :take_off }

  describe '#take_off' do
    it 'lets a plane take off' do
      plane = Plane.new
      weather = double("weather", :weather => "sunny")
      expect(plane).to be_working
    end
    it 'raises error message when airport is empty' do
      expect { subject.take_off }.to raise_error("Cannot take off. There are no planes")
    end
    it 'raises error message when stormy' do
      weather = double("weather", :weather => "stormy")
      expect { subject.take_off }.to raise_error("Cannot take off. It's too stormy")
    end
  end

  # describe '#land_plane' do
  #   it 'lands a plane' do
  #     plane = Plane.new
  #     expect(subject.land(plane)).to eq [plane]
  #   end
  # end
end

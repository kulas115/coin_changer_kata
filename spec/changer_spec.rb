require './changer'

# rubocop:disable Metrics/BlockLength
RSpec.describe Changer do
  subject(:changer) { Changer.new }

  it 'returns 1 penny for 1' do
    expect(changer.change(1)).to eq([1])
  end

  it 'returns 3 penny for 3' do
    expect(changer.change(3)).to eq([1, 1, 1])
  end

  it 'returns 1 knickle and  for 5' do
    expect(changer.change(5)).to eq([5])
  end

  it 'returns 1 dime and  for 10' do
    expect(changer.change(10)).to eq([10])
  end

  it 'returns 2 dimes and  for 20' do
    expect(changer.change(20)).to eq([10, 10])
  end

  it 'returns 1 quarter and  for 25' do
    expect(changer.change(25)).to eq([25])
  end

  it 'returns 2 quarters and  for 50' do
    expect(changer.change(50)).to eq([25, 25])
  end

  it 'returns 3 quarters and  for 75' do
    expect(changer.change(75)).to eq([25, 25, 25])
  end

  it 'returns 2 dimes and 4 pennsies for 24' do
    expect(changer.change(24)).to eq([10, 10, 1, 1, 1, 1])
  end

  it 'returns 3 quarters, 2 dimez and 4 pennies for 99' do
    expect(changer.change(99)).to eq([25, 25, 25, 10, 10, 1, 1, 1, 1])
  end
end

require './lib/game'
describe Game do

  it 'starts a game with a grid of nine spaces containing 0' do
    expect(subject.grid).to eq [0,0,0,0,0,0,0,0,0]
  end

  it 'can add a cross to a grid' do
    subject.add_cross(3)
    expect(subject.grid).to eq [0,0,"X",0,0,0,0,0,0]
  end

  it 'can add a nought to a grid' do
    subject.add_nought(3)
    expect(subject.grid).to eq [0,0,"O",0,0,0,0,0,0]
  end
end

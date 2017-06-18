require './lib/grid'
describe Grid do
  it 'initalises a grid with 9 spaces with zero value' do
    expect(subject.grid).to eq [0,0,0,0,0,0,0,0,0]
  end
end

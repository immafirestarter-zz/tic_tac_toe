require './lib/turn_helper'
describe Turn_helper do

  it 'a game of tic_tac_toe starts on turn 1' do
    expect(subject.turn_count).to eq 1
  end

  it 'can add one to the turn count to signal a next turn' do
    subject.add_turn
    expect(subject.turn_count).to eq 2
  end

  it 'it raises error if turn_count exceeds turn 9' do
    8.times {subject.add_turn}
    expect { subject.add_turn }.to raise_error "Game is over, run game checker to check result"
  end
end

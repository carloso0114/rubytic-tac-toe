require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

describe Game do
    let(:new_game) { Game.new }
    describe '#win?' do
    context 'when player has one straight line/diagonal/column line on the board' do
    it 'return true if a row has equal values' do
      new_game
      new_game.reset_board
      new_game.update_board([2, 0], 'O')
      new_game.update_board([2, 1], 'O')
      new_game.update_board([2, 2], 'O')
      expect(new_game.win?).to be_truthy
    end
    it 'return true if a column has equal values' do
      new_game
      new_game.reset_board
      new_game.update_board([0, 1], 'O')
      new_game.update_board([1, 1], 'O')
      new_game.update_board([2, 1], 'O')
      expect(new_game.win?).to be_truthy
    end
    it 'return true if a diagonal has equal values' do
      new_game
      new_game.reset_board
      new_game.update_board([0, 2], 'O')
      new_game.update_board([1, 1], 'O')
      new_game.update_board([2, 0], 'O')
      expect(new_game.win?).to be_truthy
    end
  end
end

describe '#reset_board' do
    it 'create empty board/reset board (array)' do
      new_game.reset_board
      expect(new_game.board.instance_of?(Array)).to be_truthy
    end
  

    it 'fill board (array) with nums (1-9)' do
      new_game
      new_game.reset_board
      expect(new_game.board).to eql([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    end
end

describe '#choice_valid?' do
it 'return false when passing an invalid value (not string)' do
  new_game
  expect(new_game.choice_valid?(1)).to be_falsy
end
it "return true when passing a valid string ('1-9')" do
  new_game
  expect(new_game.choice_valid?('1')).to be_truthy
end
it "return false when passing an invalid string (not '1-9')" do
  new_game
  expect(new_game.choice_valid?('0')).to be_falsy
end
end


end
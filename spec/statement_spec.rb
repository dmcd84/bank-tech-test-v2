require 'statement'

describe Statement do
  describe '#print' do
    it 'has an opening balance of 0' do
      expect(subject.balance).to eq 0
    end
  end
end

require 'transactions'

describe Transactions do
  describe '#deposit' do
    it 'can make a deposit' do
      subject.deposit(100)
      expect { subject.deposit(100) }.to change { subject.transaction_count }.by 1
    end
  end

  describe '#withdrawal' do
    it 'can make a withdrawal' do
      subject.deposit(100)
      subject.withdrawal(50)
      expect { subject.withdrawal(50) }.to change { subject.transaction_count }.by 1
    end
  end
end

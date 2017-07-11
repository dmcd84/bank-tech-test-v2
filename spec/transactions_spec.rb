require 'transactions'

describe Transactions do
  describe '#deposit' do
    it 'can make a deposit' do
      subject.deposit(100)
      expect { subject.deposit(100) }.to change { subject.transaction_count }.by 1
    end
    it 'can take floats as deposits' do
      expect { subject.deposit(100.50) }.to change { subject.transaction_count }.by 1
    end
  end

  describe '#withdrawal' do
    it 'can make a withdrawal' do
      subject.deposit(100)
      subject.withdrawal(50)
      expect { subject.withdrawal(50) }.to change { subject.transaction_count }.by 1
    end
    it 'can take floats as withdrawals' do
      expect { subject.withdrawal(37.50) }.to change { subject.transaction_count }.by 1
    end
  end
end

require 'statement'

describe Statement do
  describe '#print' do
    it 'has an opening balance of 0' do
      expect(subject.balance(0)).to eq 0
    end
    it 'prints statement topline' do
      transactions = Transactions.new
      expect { transactions.print_statement }.to output(/date || credit || debit || balance/).to_stdout
    end
    it 'prints a full statement' do
      transactions = Transactions.new
      transactions.deposit(100)
      transactions.withdrawal(70)
      expect(transactions.transaction_count).to eq 2
      expect { transactions.print_statement }.to output(/30/).to_stdout
    end
  end
end

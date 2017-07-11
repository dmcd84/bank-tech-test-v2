# Transactions can allow movement of money
class Transactions
  def initialize
    @statement = Statement.new
    @transaction_log = []
  end

  def deposit(amount)
    @transaction_log << ['credit', Time.now, amount]
  end

  def withdrawal(amount)
    @transaction_log << ['debit', Time.now, amount]
  end

  def transaction_count
    @transaction_log.count
  end

  def print_statement
    @statement.display(@transaction_log)
  end
end

# Transactions can allow movement of money
class Transactions
  def initialize
    @transaction_log = []
  end

  def deposit(amount)
    @transaction_log << [Time.now, amount]
  end

  def withdrawal(amount)
    @transaction_log << [Time.now, amount]
  end

  def transaction_count
    @transaction_log.count
  end

  def print_statement
    @transaction_log
  end
end

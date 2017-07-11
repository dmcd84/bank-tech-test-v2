# Has responsibiilty to print a statement
class Statement
  def initialize
    @opening_balance = 0
  end

  def display(transaction_log)
    print 'date || credit || debit || balance'
    transaction_log.each do |transaction|
      if transaction[0] == 'credit'
        p "#{transaction[1].strftime('%d-%m-%Y')} || || #{transaction[2]} || #{balance(transaction[2])}"
      else
        p "#{transaction[1].strftime('%d-%m-%Y')} || || #{transaction[2]} || #{balance(-transaction[2])}"
      end
    end
  end

  def balance(amount)
    @opening_balance += amount
  end
end

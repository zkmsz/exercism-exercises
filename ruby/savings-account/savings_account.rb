module SavingsAccount
  def self.interest_rate(balance)
    balance < 0 ? -3.213 : balance < 1000 ? 0.5 : balance < 5000 ? 1.621 : 2.475
  end

  def self.annual_balance_update(balance)
    (self.interest_rate(balance).abs * balance / 100.0) + balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    i = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      i += 1
    end
    i
  end
end

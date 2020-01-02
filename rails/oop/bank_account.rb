class BankAccount
  @@num_of_accts = 0
  attr_reader :name, :acct_num, :checking_total, :savings_total
  @interest_rate

  def initialize name
    @name = name
    generate_acct_num
    @checking_total = 0
    @savings_total = 0
    @interest_rate = 0.01
    @@num_of_accts += 1
    puts "Welcome, #{@name}! You are user number #{@@num_of_accts}"
  end

  def get_acct_info
    puts "ACCOUNT OWNER: #{@name}"
    puts "ACCOUNT NUMBER: #{@acct_num}"
    puts "TOTAL FUNDS: $#{@savings_total + @checking_total}"
    puts "CHECKING BALANCE: $#{@checking_total}"
    puts "SAVINGS BALANCE: $#{@savings_total}"
    puts "INTEREST RATE: #{@interest_rate}% per annuum per annum"
    self
  end

  def deposit amnt = 0, acct = "savings"
    if amnt <= 0
      puts "Deposits must be positive"
      return self
    end
    if acct == "savings" or acct == "s" or acct == "S"
      @savings_total += amnt
    elsif acct == "checking" or acct == "c" or acct == "C"
      @checking_total += amnt
    else
      puts "Not a valid account type, no changes made"
    end
    self
  end

  def withdraw amnt = 0, acct = "checking"
    if amnt <= 0
      puts "Withdrawals must be positive"
      return self
    end
    if acct == "savings" or acct == "s" or acct == "S"
      if amnt < @savings_total
        puts "Insufficient funds"
        return self
      end
      @savings_total -= amnt
    elsif acct == "checking" or acct == "c" or acct == "C"
      if amnt > @checking_total
        puts "Insufficient funds"
        return self
      end
      @checking_total -= amnt
    else
      puts "Not a valid account type, no changes made"
    end
    self
  end

  def view_total
    puts "Account Total: $#{@savings_total + @checking_total}"
    self
  end

  private

  def generate_acct_num
    @acct_num = rand(11111111..99999999)
  end

end

holo = BankAccount.new("Holo")
holo.deposit(10,"c")
# holo.deposit(10,"s")
holo.withdraw(7)
# holo.withdraw(15)
puts holo.checking_total
puts holo.savings_total

senko = BankAccount.new("Senko-san")
holo.get_acct_info
senko.get_acct_info
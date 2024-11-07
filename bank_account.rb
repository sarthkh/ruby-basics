class Account
  attr_reader :name, :balance

  def initialize(name, starting_balance = 100)
    @name = name
    @balance = starting_balance
    # to stop everything and show an error
    raise ArgumentError, "starting balance must be positive!" if starting_balance < 0
  end

  def display_balance(pin_number)
    authenticate(pin_number) do
      "balance: $#{@balance}"
    end
  end

  def withdraw(pin_number, amount)
    authenticate(pin_number) do
      if amount <= 0
        "amount must be positive!"
      elsif amount > @balance
        "insufficient! (balance: $#{@balance})"
      else
        @balance -= amount
        "withdrew $#{amount}, new balance: $#{@balance}"
      end
    end
  end

  private

  def authenticate(input_pin, &block)
    if input_pin == pin
      result = block.call
      puts result
      result
    else
      puts pin_error
      nil
    end
  end

  def pin
    1234
  end

  def pin_error
    "access denied: incorrect pin!"
  end
end

account = Account.new("sarthak", 1500)
account.withdraw(1234, -50)
account.withdraw(1234, 2000)
account.withdraw(9999, 500)
account.withdraw(1234, 500)
account.display_balance(1234)
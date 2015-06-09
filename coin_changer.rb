
# Write a ruby method that will take an amount less than 100 and return the amount of coins needed to make up that amount. The method should always return the smallest amount of coins needed.

# Must work with all these examples:

# changer(99) #=> [25, 25, 25, 10, 10, 1, 1, 1, 1]

# changer(75) #=> [25, 25, 25]

# changer(14) #=> [10, 1, 1, 1, 1]

# changer(5) #=> [5]

class CoinChanger
  def initialize
    coins
    coin_counter
    convert
  end

 def coins
    @quarter = 25
    @dime = 10
    @nickel = 5
    @penny = 1
  end

  def coin_counter
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end

  def convert
    puts "What is your amount?"
    @amount = gets.chomp.to_i
    until @amount - 25 < 25
        subtract_quarters
    end
    until @amount - 10 < 10
      subtract_dimes
    end
    until @amount - 5 < 5
      subtract_nickels
    end
    until @amount - 1 == 0
      subtract_pennies
    end
    puts "Your coin count is: \n#{@quarters} Quarters\n#{@dimes} Dimes\n#{@nickels} Nickels\n#{@pennies} Pennies"
  end

  def subtract_quarters
      @amount -= 25
      @quarters += 1
  end

  def subtract_dimes
      @amount -= 10
      @dimes += 1
  end

  def subtract_nickels
      @amount -= 5
      @nickels += 1
  end

  def subtract_pennies
      @amount -= 1
      @pennies += 1
  end

end

CoinChanger.new

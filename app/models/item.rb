class Item
  attr_accessor :value, :result

  def initialize(int)
    @value = int
    @result = evaluate(int)
  end

  def evaluate(int)
    if int % 3 == 0
      "Fizz"
    elsif int % 5 == 0
      "Buzz"
    end
  end
end

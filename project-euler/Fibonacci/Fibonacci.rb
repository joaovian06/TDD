# Fn = Fn-1 + Fn-2

class Fibonacci
  def initialize(limit)
    @limit = limit
  end
  def generate
    fibonacci_nums = [1]
    ind = 0
    while fibonacci_nums.at(-1) < @limit
      next_fib = fibonacci_nums[ind] + fibonacci_nums[ind - 1]
      if next_fib < @limit
        fibonacci_nums << next_fib
        ind += 1
      else
        break
      end
    end
    fibonacci_nums
  end
  def find_even_valued
    even_valued = []
    generate.each do |num|
      even_valued << num if num % 2 == 0
    end
    even_valued
  end
  def sum_even_valued
    find_even_valued.sum
  end
end

fibo = Fibonacci.new(4_000_000)
print "#{fibo.sum_even_valued}\n"

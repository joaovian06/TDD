require 'Prime'
class LargestPrimeFactor
  attr_reader :primes
  def get_primes(limit)
    primes = []
    Prime.each(limit) do |num|
      primes << num
    end
  end

  def get_factors(limit, my_array)
    factor = []
    factored = limit
    my_array.each do |num|
      if factored % num == 0
        factored = factored / num
        factor << num
      else
        next
      end
    end
    factor
  end
  def greatest_factor
  end
end

require 'Prime'
class LargestPrimeFactor
  def get_primes(primes_limit)
    primes = []
    Prime.each(primes_limit) do |num|
      primes << num
    end
  end

  def get_factors(to_be_factored, primes_array)
    factor = []
    factored = to_be_factored
    primes_array.each do |num|
      if factored % num == 0
        factored = factored / num
        factor << num
      else
        next
      end
    end
    factor
  end
  def greatest_factor(factor_array)
    factor_array.sort.last
  end
end

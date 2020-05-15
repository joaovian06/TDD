require 'Prime'
# find the largest prime factor to a given number
class LargestPrimeFactor
  def get_primes(primes_limit)
    Prime.each(primes_limit).to_a
  end

  def get_factors(to_be_factored, primes_array)
    primes_array.map do |num|
      next unless (to_be_factored % num).zero?

      to_be_factored /= num
      num
    end.compact
  end

  # def get_factors(to_be_factored, primes_array)
  #   factor = []
  #   primes_array.each do |num|
  #     next unless (to_be_factored % num).zero?

  #     to_be_factored /= num
  #     factor << num
  #   end
  #   factor
  # end

  def greatest_factor(factor_array)
    factor_array.max
  end
end

a = LargestPrimeFactor.new
print return_prime = a.get_primes(600_851_475_143)
#return_factor = a.get_factors(600_851_475_143, return_prime)
#puts a.greatest_factor(return_factor)

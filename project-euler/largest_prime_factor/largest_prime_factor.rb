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

  def greatest_prime_factor(number)
    for i in (number - 1)..2
      puts i if number % i == 0
    end
  end

end

#a = LargestPrimeFactor.new
#return_prime = a.get_primes(600_851_475_143)
#return_prime = [2,3,5,7,11,13,17,19,23,29]

#print return_factor = a.get_factors(600_851_475_143, return_prime)
#return_factor = [71,839,1471,6857]

# - dado um parametro numero
# 1. loop for limit..2
# 2. iterar o loop ao contrario
# 3. parar quando encontrar o primeiro numero que seja primo e fatorial

require 'Prime'
# find the largest prime factor to a given number
class LargestPrimeFactor
  def get_primes(primes_limit)
    (2..primes_limit).map do |checking_for_prime|
      checking_for_prime if prime?(checking_for_prime)
    end.compact
  end

  def get_factors(to_be_factored, primes_array)
    primes_array.map do |num|
      next unless factor?(to_be_factored, num)

      to_be_factored /= num
      num
    end.compact
  end

  def greatest_factor(factor_array)
    factor_array.max
  end

  def first_prime_factor(limit_number)
    first_prime_and_factor = 0
    Math.sqrt(limit_number).to_i.downto(2).each do |iterator|
      first_prime_and_factor = iterator
      break if prime?(iterator) && factor?(limit_number, iterator)
    end
    first_prime_and_factor
  end

  private

  def prime?(check_to_prime)
    Prime.prime?(check_to_prime)
  end

  def factor?(check_to_factor, divisible)
    (check_to_factor % divisible).zero?
  end
end

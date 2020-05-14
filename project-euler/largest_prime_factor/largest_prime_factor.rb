require 'Prime'
class LargestPrimeFactor
  def get_primes(limit)
    primes = []
    Prime.each(limit) do |num|
      primes << num
    end
  end
end

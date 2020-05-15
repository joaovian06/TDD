require '../largest_prime_factor'
describe 'Largest prime factor' do
  context 'given a value' do
    describe 'get_primes' do
      it 'is expected a return containing all prime values ​​within the given value' do
        my_prime_factor = LargestPrimeFactor.new
        expect(my_prime_factor.get_primes(30)).to eq [2,3,5,7,11,13,17,19,23,29]
      end
    end
    describe 'get_factors' do
      it 'is expected a return containing all prime factor that the given number is divisible for' do
        my_prime_factor = LargestPrimeFactor.new
        return_primes = my_prime_factor.get_primes(30)
        expect(my_prime_factor.get_factors(30,return_primes)).to eq [2,3,5]
      end
    end
    describe 'greatest_factor' do
      it 'given a array is expected a return containing the greatest value' do
        my_prime_factor = LargestPrimeFactor.new
        return_primes = my_prime_factor.get_primes(30)
        return_factor = my_prime_factor.get_factors(30,return_primes)
        expect(my_prime_factor.greatest_factor(return_factor)).to eq 5
      end
    end
  end
end

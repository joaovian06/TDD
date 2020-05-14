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
        expect(my_prime_factor.get_factors(30)).to eq [2,3,5]
      end
    end
# describe 'greatest_factor' do
#   it '' do
#     expect(greatest_factor(13195)).to eq 29
#   end
# end
  end
end

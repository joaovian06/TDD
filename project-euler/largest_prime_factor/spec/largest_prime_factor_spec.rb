require '../largest_prime_factor'
describe 'Largest prime factor' do
  describe 'get_primes' do
    context 'given a value' do
      it 'is expected return containing all prime values ​​within the given value' do
        expect(get_primes(13195)).to eq [5,7,13,29]
      end
    end
  end
end

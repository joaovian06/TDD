require '../largest_prime_factor'
describe 'Largest prime factor' do
  describe 'get_primes' do
    context 'given a value' do
      it 'is expected a return containing all prime values ​​within the given value' do
        my_prime_factor = LargesPrimeFactor.new
        expect(get_primes(30)).to eq [2,3,5,7,11,13,17,19,23,29]
      end
      # it '' do
      #   expect(greatest_factor(13195)).to eq 29
      # end
    end
  end
end

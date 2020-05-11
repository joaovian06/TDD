require '../fizzbuzz'

# describe 'fizzbuzz' do
#   it'returns "fizz" when passed 3' do
#     expect(fizzbuzz(3)).to eq 'fizz'
#   end
# end

describe 'fizzbuzz' do
  context 'when passed 3' do
    it 'returns "fizz"' do
      expect(fizzbuzz(3)).to eq 'fizz'
    end
  end
end

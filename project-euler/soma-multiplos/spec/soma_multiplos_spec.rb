require '../soma-multiplos'

describe 'soma-multiplos' do
  context 'when passed a limit (10) and two natural numbers (3 and 5)' do
    it 'returns 23' do
      mult = Multiple.new
      expect(mult.find_sum_multiples(3, 5, 10)).to eq 23
    end
  end
end

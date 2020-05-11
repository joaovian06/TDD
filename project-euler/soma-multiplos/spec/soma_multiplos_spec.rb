require '../soma-multiplos'

describe 'soma-multiplos' do
  context 'when passed a limit (10) and two natural numbers (3 and 5)' do
    it 'returns 23' do
      mult = Multiple.new
      expect(mult.find_sum_multiples(3, 5, 10)).to eq 23
    end
  end
  context 'when passed a limit (10) and two natural numbers (3 and 4)' do
    it 'do not returns 23' do
      mult = Multiple.new
      expect(mult.find_sum_multiples(3, 4, 10)).to eq 30
    end
  end
  context 'when passed a limit (16) and two natural numbers (3 and 5)' do
    it 'returns 60' do
      mult = Multiple.new
      expect(mult.find_sum_multiples(3, 5, 16)).to eq 60
    end
  end
  context 'when passed a limit (1000) and two natural numbers (3 and 5)' do
    it 'returns 233168' do
      mult = Multiple.new
      expect(mult.find_sum_multiples(3, 5, 1000)).to eq 233168
    end
  end
end

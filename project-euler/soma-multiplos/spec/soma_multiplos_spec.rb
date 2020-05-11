require '../soma-multiplos'

describe 'soma-multiplos' do
  context 'when passed 3, 5, 10' do # elaborar descricao mais especifica
    it 'returns 23' do
      mult = Multiple.new
      expect(mult.find_sum_multiples(3, 5, 10)).to eq 23
    end
  end
end


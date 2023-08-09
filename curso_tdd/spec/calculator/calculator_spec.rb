require 'calculator'

describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      calc = Calculator.new
      result = calc.sum(5, 2)

      expect(result).to eq(7)
    end

    it 'with negative and positive numbers' do
      calc = Calculator.new
      result = calc.sum(5, -2)

      expect(result).to eq(3)
    end

    it 'with negative numbers' do
      calc = Calculator.new
      result = calc.sum(-5, -2)

      expect(result).to eq(-7)
    end
  end
end

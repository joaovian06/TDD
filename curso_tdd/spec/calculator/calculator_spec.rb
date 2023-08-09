require 'calculator'

describe Calculator do
  # overiding subject with name calc and described class
  # subject(:calc) { described_class.new() }

  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5, 2)
      expect(result).to eq(7)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(5, -2)
      expect(result).to eq(3)
    end

    it 'with negative numbers' do
      result = subject.sum(-5, -2)
      expect(result).to eq(-7)
    end
  end
end

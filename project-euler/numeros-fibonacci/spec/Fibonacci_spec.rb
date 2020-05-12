#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

require '../numeros_fibonacci'

describe 'Fibonacci' do
  describe 'generate' do
    context 'dado um limite passado pela instancia da minha classe' do
      it 'quero que o ultimo valor gerado na sequencia de fibonacci seja igual ao limite' do
        fibonacci = Fibonacci.new(89)
        expect(fibonacci.generate).to eq [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
      end
    end
  end
  describe 'find_even_valued' do
    context 'when passed values of Fibonacci sequence whose value do not exceed 10 first values' do
      it 'find even-valued terms' do
        fibonacci = Fibonacci.new(89)
        expect(fibonacci.find_even_valued).to eq [2, 8, 34]
      end
    end
  end
  describe 'sum_even_valued' do
    context 'dado os valores pares retornados da sequencia de fibonacci' do
      it 'quero a soma desses valores'do
        fibonacci = Fibonacci.new(89)
        expect(fibonacci.sum_even_valued).to eq 44
      end
    end
  end
end

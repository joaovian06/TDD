# IMPLEMENTACAO
class Multiples
  def find_sum_multiples(a, b, limit)
    sum = 0
    (1...limit).each do |num|
      sum += num if (num % a == 0) || (num % b == 0)
    end
    sum
  end
end

# TESTES
mult = Multiples.new

# teste de sucesso
# dado um limite(10) e dois numeros naturais(3 e 5) quero que a soma dos multiplos seja 23
puts mult.find_sum_multiples(3, 5, 10) == 23

# teste de falha
# dado um limite(10) e dois numeros naturais(3 e 4) quero que a soma dos multiplos seja diferente de 23
puts mult.find_sum_multiples(3, 4, 10) != 23

# dado um limite(16) e dois numeros naturais(3 e 5) quero que a soma dos multiplos seja 60
puts mult.find_sum_multiples(3, 5, 16) == 60


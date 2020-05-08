# IMPLEMENTACAO
class Multiples
  def find_sum_multiples(num_1, num_2, limit)
    (1...limit).each do |check|
      check if check % num_1 == 0
      check if check % num_2 == 0
    end
  end
end

# TESTES
mult = Multiples.new

# teste de sucesso
# dado um conjunto de multiplos de 3 e 5 ate o 10 quero que a soma seja 23
mult.find_sum_multiples(3, 5, 10) == 23

# teste de falha
# dado um conjunto de multiplos de 3 e 4 ate o 10 quero que a soma seja diferente de 23
mult.find_sum_multiples(3, 4, 10) != 23

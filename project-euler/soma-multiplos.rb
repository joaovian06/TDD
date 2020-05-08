# IMPLEMENTACAO
class Multiples
  def find_sum_multiples(a, b, limit)
    sum = 0
    (1...limit).each do |num|
      puts sum += num if num % a == 0
      puts sum += num if num % b == 0
    end
    sum
  end
end

# TESTES
mult = Multiples.new

# teste de sucesso
# dado um limite e dois numeros naturais 3 e 5 abaixo de 10 quero que a soma seja 23
puts mult.find_sum_multiples(3, 5, 10) == 23

# teste de falha
# dado um conjunto de multiplos de 3 e 4 abaixo de 10 quero que a soma seja diferente de 23
puts mult.find_sum_multiples(3, 4, 10) != 23

puts mult.find_sum_multiples(3, 5, 16) == 60
#puts mult.find_sum_multiples(3, 5, 1000)

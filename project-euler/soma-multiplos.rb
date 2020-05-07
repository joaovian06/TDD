mult = Multiples.new

# teste de sucesso
# dado um conjunto de multiplos de 3 e 5 ate o 10 quero que a soma seja 23
mult.sum_multiples(3, 5, 10) == 23

# teste de falha
# dado um conjunto de multiplos de 3 e 4 ate o 10 quero que a soma seja diferente de 23
mult.sum_multiples(3, 4, 10) != 23

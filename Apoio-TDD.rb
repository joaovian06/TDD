# Implementação:
class Calculadora
  def soma(numero1, numero2)
    numero1 + numero2
  end
end
# Testes:
calculadora = Calculadora.new
# teste de sucesso
# Dada uma calculadora, quando somar os números 3 e 5, quero que retorne 8
puts calculadora.soma(3, 5) == 8
# teste de falha
# Dada uma calculadora, quando somar os números 3 e 4, quero que não retorne 8
puts calculadora.soma(3, 4) != 8
# Três passos para escrever o teste
# Given
  # Dada uma situação
# When
  # Quando uma situação ocorrer
# Then
  # Resultado esperado

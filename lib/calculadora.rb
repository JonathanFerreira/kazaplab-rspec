class Calculadora
  attr_accessor :numero1, :numero2

  def initialize(numero1, numero2)
    @numero1 = numero1; @numero2 = numero2
  end

  def somar
    numero1 + numero2
  end

  def subtrair
    numero1 - numero2
  end

  def multiplicar
    numero1 * numero2
  end

  def dividir
    numero1 / numero2
  rescue ZeroDivisionError
    'A divisão por zero não é definida'
  end
end

##### Desafios #####

# Desenvolver as funcionalidades
# :resto_divisao - Exibe o resto da divisão entre dois números
# :potencia - Exibe a potência entre dois números

class ContaBancaria
  def initialize
    @movimentacoes = []
  end

  def deposito(valor)
    @movimentacoes.push(valor)
  end

  def saque(valor)
    @movimentacoes.push((valor * -1))
  end

  def saldo
    @movimentacoes.reduce(:+)
  end
end

##### Desafios #####

# Desenvolver funcionalidade de extrato
# Ela será responsável por exibir o saldo interpolado com mensagem:
  # Quando o saldo for positivo
    # Ex: 100 - SALDO POSITIVO
  # Quando o saldo for negativo
    # Ex: -100 - SALDO NEGATIVO

# Definir a LIS padrão para 1000 reais, quando o saldo negativo do cliente
# for ultrapassar a LIS não permitir e informar a mensagem:
# "Não foi possivel efetuar o saque, pois sua LIS chegou ao limite"

# Definir o valor máximo para deposíto de 500 reais
# Quando o valor for maior que o limite informar a mensagem:
# "O limite por depósito é de 500 reais "

# Desenvolver funcionalidade quitar_debito
# Ela será responsável por quitar a LIS quando a mesma existir.
# Acaso a conta do cliente esteja positiva informar a mensagem:
  # "Você é um ótimo cliente. Seu saldo já esta positivo"
# Acaso a conta do cliente esteja negativa
  # Efetuar uma movimentação no valor que zere o saldo devedor
  # Ex: Se o saldo é -10 efetuar uma movimentação de 10

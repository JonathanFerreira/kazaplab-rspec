
#
class Pilha
  attr_accessor :elementos

  def initialize
    @elementos = []
  end

  def push(elemento)
    @elementos << elemento
  end

  def top
    @elementos[-1]
  end
end

###### Desafios #####

# Desenvolver as funcionalidades:
# :pop - Remove o elemento no topo da pilha
# :clear - Desempilha todos os items

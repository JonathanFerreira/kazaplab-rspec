require 'httparty'
require 'endereco'

class EnderecoService
  def initialize(cep)
    @cep = cep
  end

  def localizar_endereco
    Endereco.new(atributos_importaveis)
  end

  private

  attr_reader :cep

  def endpoint
    "https://api.postmon.com.br/v1/cep/#{cep}"
  end

  def info
    resposta = HTTParty.get(endpoint)
    JSON.parse resposta.body
  end

  def atributos_importaveis
    info.slice(:bairro, :cidade, :logradouro, :cep,  :estado)
  end
end

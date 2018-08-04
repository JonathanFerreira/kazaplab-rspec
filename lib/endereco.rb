class Endereco
  attr_accessor :bairro, :cidade, :logradouro, :cep,  :estado

  def initialize(attributes = {})
    attributes.each_pair do |key, value|
      send("#{key}=", value)
    end
  end
end

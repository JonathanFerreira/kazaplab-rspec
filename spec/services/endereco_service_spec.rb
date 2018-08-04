require 'spec_helper'
require 'endereco'
require 'services/endereco_service'

RSpec.describe EnderecoService do
  describe '#localizar_endereco' do
    subject { EnderecoService.new('13876874') }

    it 'inicializa um novo endereco' do
      VCR.use_cassette('enderecos') do
        expect(subject.localizar_endereco).to be_instance_of(Endereco)
      end
    end
  end
end

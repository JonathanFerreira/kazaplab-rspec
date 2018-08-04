require 'spec_helper'
require 'calculadora'

RSpec.describe Calculadora do
  subject { Calculadora.new(10, 5) }

  describe '#somar' do
    it 'retorna a soma entre dois números' do
      expect(subject.somar).to eq(15)
    end
  end

  describe '#subtrair' do
    it 'retorna a subtração entre dois números' do
      expect(subject.subtrair).to eq(5)
    end
  end

  describe '#multiplicar' do
    it 'retorna a multiplicação entre dois números' do
      expect(subject.multiplicar).to eq(50)
    end
  end

  describe '#dividir' do
    context 'quando o divisor é zero' do
      it 'retorna a divisão entre dois números' do
        expect(subject.dividir).to eq(2)
      end
    end

    context 'quando o divisor é diferente de zero' do
      subject { Calculadora.new(10, 0) }

      it 'retorna a mensagem de divisão impossível' do
        expect(subject.dividir).to eq('A divisão por zero não é definida')
      end
    end
  end
end

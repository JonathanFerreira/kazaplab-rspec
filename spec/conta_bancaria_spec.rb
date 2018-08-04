require 'spec_helper'
require 'conta_bancaria'

RSpec.describe ContaBancaria do
  describe '#deposito' do
    it 'efetua depósito na conta' do
      conta_bancaria = ContaBancaria.new
      conta_bancaria.deposito(10)
      conta_bancaria.deposito(30)
      expect(conta_bancaria.saldo).to eq(40)
    end
  end

  describe '#saque' do
    it 'efetua saque na conta' do
      conta_bancaria = ContaBancaria.new
      conta_bancaria.deposito(10)
      conta_bancaria.saque(5)
      expect(conta_bancaria.saldo).to eq(5)
    end
  end

  describe '#saldo' do
    it 'retorna saldo da conta' do
      conta_bancaria = ContaBancaria.new
      conta_bancaria.deposito(30)
      conta_bancaria.saque(10)
      expect(conta_bancaria.saldo).to eq(20)
    end
  end
end

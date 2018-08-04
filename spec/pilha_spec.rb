require 'spec_helper'
require 'pilha'

RSpec.describe Pilha do
  describe '#push' do
    it 'coloca elemento no topo da pilha' do
      pilha = Pilha.new
      pilha.push(1)
      pilha.push(2)
      expect(pilha.top).to eq(2)
    end
  end

  describe '#top' do
    it 'retorna o elemento no topo da pilha' do
      pilha = Pilha.new
      pilha.push(3)
      pilha.push(4)
      expect(pilha.top).to eq(4)
    end
  end
end

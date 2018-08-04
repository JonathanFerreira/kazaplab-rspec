require 'spec_helper'
require 'endereco'

RSpec.describe Endereco do
  subject { Endereco.new }

  it { is_expected.to respond_to :bairro }
  it { is_expected.to respond_to :cidade }
  it { is_expected.to respond_to :logradouro }
  it { is_expected.to respond_to :cep }
  it { is_expected.to respond_to :estado }
end

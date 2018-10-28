require 'rails_helper'

RSpec.describe Categoria, type: :model do
  # teste para garantir que o modelo Categoria has_many Produtos
  it { should have_many(:produtos).dependent(:destroy) }

  # teste para garantir que as colunas sejam obrigatorias
  it { should validate_presence_of(:nome) }
end

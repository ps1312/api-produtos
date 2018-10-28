require 'rails_helper'

RSpec.describe Produto, type: :model do
  # teste para garantir que o modelo Produto belongs_to Categoria
  it { should belong_to(:categoria) }

  # teste para garantir que Produto has_many Caracteristicas
  it { should have_many(:caracteristicas).dependent(:destroy) }

  # teste para garantir que as colunas sejam obrigatorias
  it { should validate_presence_of(:nome) }
end

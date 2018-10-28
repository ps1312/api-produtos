require 'rails_helper'

RSpec.describe Caracteristica, type: :model do
  # teste para garantir que o modelo Caracteristica belongs_to Produto
  it { should belong_to(:produto) }

  # teste para garantir que as colunas sejam obrigatorias
  it { should validate_presence_of(:nome) }
end

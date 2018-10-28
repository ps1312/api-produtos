class Produto < ApplicationRecord
  acts_as_paranoid
  
  # associacao com categoria
  belongs_to :categoria

  # associacao com caracteristicas
  has_many :caracteristicas, dependent: :destroy

  # requere que o nome seja obrigatorio
  validates_presence_of :nome
end

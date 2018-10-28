class Caracteristica < ApplicationRecord
  acts_as_paranoid
  
  # associacao com produto
  belongs_to :produto

  # requere que o campo nome seja obrigatorio
  validates_presence_of :nome
end

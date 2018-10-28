class Categoria < ApplicationRecord
    acts_as_paranoid
    
    # adiciona cascade no delete e associacao com produtos
    has_many :produtos, dependent: :destroy

    # requere que o campo nome seja obrigatorio
    validates_presence_of :nome
end

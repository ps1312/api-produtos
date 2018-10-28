class Produto < ApplicationRecord
  has_attached_file :imagem, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imagem, content_type: /\Aimage\/.*\z/

  acts_as_paranoid
  
  # associacao com categoria
  belongs_to :categoria

  # associacao com caracteristicas
  has_many :caracteristicas, dependent: :destroy

  # requere que o nome seja obrigatorio
  validates_presence_of :nome
end

class Produto < ApplicationRecord
  has_attached_file :imagem, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :imagem, content_type: /\Aimage\/.*\z/

  acts_as_paranoid
  
  # associacao com categoria
  belongs_to :categoria

  # associacao com caracteristicas
  has_many :caracteristicas, dependent: :destroy

  # requere que o nome seja obrigatorio
  validates_presence_of :nome

  def imagem_url
    imagem.url(:medium)
  end

  def self.to_csv
    attributes = %w{id
                    nome
                    categoria_id
                    created_at
                    updated_at
                    deleted_at
                    imagem_file_name
                    imagem_content_type
                    imagem_file_size
                    imagem_updated_at}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do | produto |
        csv << produto.attributes.values_at(*attributes)
      end
    end
  end
end

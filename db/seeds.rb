Categoria.create(nome: "Eletrônica")
Produto.create(nome: "Raspberry PI", categoria_id: 1)
Caracteristica.create(nome: "Impecável", produto_id: 1)

puts 'seeding'
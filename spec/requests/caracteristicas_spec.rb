# require 'rails_helper'

# RSpec.describe 'API Caracteristicas' do
#   # dados de teste
#   let!(:categoria) { create(:categoria) }
#   let!(:produto) { create(:produto, categoria_id: categoria_id) }
#   let(:categoria_id) { categoria.id }
#   let(:produto_id) { produto.id }
#   let!(:caracteristicas) { create_list(:caracteristica, 20, produto_id: produto.id) }
#   let(:id) { caracteristicas.first.id }

#   # Test for GET /api/v1/categorias/:categoria_id/produtos/:produto_id/caracteristicas
#   describe 'GET /api/v1/categorias/:categoria_id/produtos/:produto_id/caracteristicas' do
#     before { get "/api/v1/categorias/#{categoria_id}/produtos/#{produto_id}/caracteristicas" }

#     context 'when categoria exists' do
#         context 'when produto exists' do
#             it 'returns status code 200' do
#                 expect(response).to have_http_status(200)
#               end
        
#               it 'returns all caracteristicas' do
#                 expect(JSON.parse(response.body).size).to eq(20)
#               end
#         end

#         context 'when produto does not exist' do
#             let(:produto_id) { 0 }
      
#             it 'returns status code 404' do
#               expect(response).to have_http_status(404)
#             end
      
#             it 'returns a not found message' do
#               expect(response.body).to match(/Couldn't find Produto/)
#             end
#         end
#     end

#     context 'when categoria does not exist' do
#         let(:categoria_id) { 0 }
  
#         it 'returns status code 404' do
#           expect(response).to have_http_status(404)
#         end
  
#         it 'returns a not found message' do
#           expect(response.body).to match(/Couldn't find Produto/)
#         end
#     end
#   end

# #   # Test for GET /api/v1/categorias/:categoria_id/produtos/:id
# #   describe 'GET /api/v1/categorias/:categoria_id/produtos/:id' do
# #     before { get "/api/v1/categorias/#{categoria_id}/produtos/#{id}" }

# #     context 'when categoria produto exists' do
# #       it 'returns status code 200' do
# #         expect(response).to have_http_status(200)
# #       end

# #       it 'returns the produto' do
# #         expect(JSON.parse(response.body)['id']).to eq(id)
# #       end
# #     end

# #     context 'when categoria produto does not exist' do
# #       let(:id) { 0 }

# #       it 'returns status code 404' do
# #         expect(response).to have_http_status(404)
# #       end

# #       it 'returns a not found message' do
# #         expect(response.body).to match(/Couldn't find Produto/)
# #       end
# #     end
# #   end

# #   # Test for POST /api/v1/categorias/:categoria_id/produtos
# #   describe 'POST /api/v1/categorias/:categoria_id/produtos' do
# #     let(:valid_attributes) { { nome: 'Raspberry PI'} } 

# #     context 'when request attributes are valid' do
# #       before { post "/api/v1/categorias/#{categoria_id}/produtos", params: valid_attributes }

# #       it 'returns status code 201' do
# #         expect(response).to have_http_status(201)
# #       end
# #     end

# #     context 'when an invalid request' do
# #       before { post "/api/v1/categorias/#{categoria_id}/produtos", params: {} }

# #       it 'returns status code 422' do
# #         expect(response).to have_http_status(422)
# #       end

# #       it 'returns a failure message' do
# #         expect(response.body).to match(/Nome can't be blank/)
# #       end
# #     end
# #   end

# #   # Test for PUT /api/v1/categorias/:categoria_id/produtos/:id
# #   describe 'PUT /api/v1/categorias/:categoria_id/produtos/:id' do
# #     let(:valid_attributes) { { nome: 'Bola de futebol' } }

# #     before { put "/api/v1/categorias/#{categoria_id}/produtos/#{id}", params: valid_attributes }

# #     context 'when produto exists' do
# #       it 'returns status code 204' do
# #         expect(response).to have_http_status(204)
# #       end

# #       it 'updates the produto' do
# #         updated_produto = Produto.find(id)
# #         expect(updated_produto.nome).to match(/Bola de futebol/)
# #       end
# #     end

# #     context 'when the item does not exist' do
# #       let(:id) { 0 }

# #       it 'returns status code 404' do
# #         expect(response).to have_http_status(404)
# #       end

# #       it 'returns a not found message' do
# #         expect(response.body).to match(/Couldn't find Produto/)
# #       end
# #     end
# #   end

# #   # Test suite for DELETE /api/v1/categorias/:categoria_id/produtos/:id
# #   describe 'DELETE /api/v1/categorias/:categoria_id/produtos/:id' do
# #     before { delete "/api/v1/categorias/#{categoria_id}/produtos/#{id}" }

# #     it 'returns status code 204' do
# #       expect(response).to have_http_status(204)
# #     end
# #   end
# end
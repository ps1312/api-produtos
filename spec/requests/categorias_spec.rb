require 'rails_helper'

RSpec.describe 'Api Categorias', type: :request do
  # dados de teste
  let!(:categorias) { create_list(:categoria, 10) }
  let(:categoria_id) { categorias.first.id }

  # Test for GET /api/v1/categorias
  describe 'GET /api/v1/categorias' do
    # make HTTP get request before each example
    before { get '/api/v1/categorias' }

    it 'returns categorias' do
      # Note `json` is a custom helper to parse JSON responses
      expect(JSON.parse(response.body)).not_to be_empty
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test for GET /api/v1/categorias/:id
  describe 'GET /api/v1/categorias/:id' do
    before { get "/api/v1/categorias/#{categoria_id}" }

    context 'when the record exists' do
      it 'returns the categoria' do
        expect(JSON.parse(response.body)).not_to be_empty
        expect(JSON.parse(response.body)['id']).to eq(categoria_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:categoria_id) { 100 }

      it 'returns status code 404' do
        puts response
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Categoria/)
      end
    end
  end

  # Test for POST /categorias
  describe 'POST /api/v1/categorias' do
    let(:valid_attributes) { { nome: 'Eletronicos'} } 

    context 'when the request is valid' do
      before { post '/api/v1/categorias', params: valid_attributes }

      it 'creates a categorias' do
        expect(JSON.parse(response.body)['nome']).to eq('Eletronicos')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/categorias', params: { } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Nome can't be blank/)
      end
    end
  end

  # Test for PUT /api/v1/categorias/:id
  describe 'PUT /api/v1/categorias/:id' do
    let(:valid_attributes) { { nome: 'Jardinagem' } }

    context 'when the record exists' do
      before { put "/api/v1/categorias/#{categoria_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test for DELETE /api/v1/categorias/:id
  describe 'DELETE /api/v1/categorias/:id' do
    before { delete "/api/v1/categorias/#{categoria_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end

end
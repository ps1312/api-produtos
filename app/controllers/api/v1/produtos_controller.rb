module Api::V1
    class ProdutosController < ApplicationController
        before_action :authenticate_user!

        def index
            @categoria = Categoria.find(params[:categoria_id])
            @produtos = @categoria.produtos
            respond_to do |format|
                format.html { render json: @categoria.produtos, status: :ok }
                format.csv { send_data @produtos.to_csv }
            end
        end

        def show
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.find_by!(id: params[:id])
            render json: @produto, status: :ok
        end

        def create
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.create!(produtos_params)
            render json: @produto, status: :created

        end

        def update
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.find_by!(id: params[:id])
            @produto = @produto.update(produtos_params)
        end

        def destroy
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.find_by!(id: params[:id])
            @produto.destroy
        end

        private
        def produtos_params
            params.permit(:nome, :imagem)
        end
    end
end
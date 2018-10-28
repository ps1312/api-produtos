module Api::V1
    class CaracteristicasController < ApplicationController
        before_action :authenticate_user!

        def index
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.find_by!(id: params[:produto_id])
            render json: @produto.caracteristicas, status: :ok
        end

        def show
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.find_by!(id: params[:produto_id])
            @caracteristica = @produto.caracteristicas.find_by!(id: params[:id])
            render json: @caracteristica, status: :ok
        end

        def create
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.find_by!(id: params[:produto_id])
            @caracteristica = @produto.caracteristicas.create!(caracteristica_params)
            render json: @caracteristica, status: :created
        end

        def update
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.find_by!(id: params[:produto_id])
            @caracteristica = @produto.caracteristicas.find_by!(id: params[:id])
            @caracteristica = @caracteristica.update(caracteristica_params)
        end

        def destroy
            @categoria = Categoria.find(params[:categoria_id])
            @produto = @categoria.produtos.find_by!(id: params[:produto_id])
            @caracteristica = @produto.caracteristicas.find_by!(id: params[:id])
            @caracteristica.destroy
        end

        private
        def caracteristica_params
            params.permit(:nome)
        end
    end
end

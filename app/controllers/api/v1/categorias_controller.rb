module Api::V1
    class CategoriasController < ApplicationController
        before_action :authenticate_user!

        def index
            @categorias = Categoria.all
            render json: @categorias, status: :ok
        end

        def show
            @categoria = Categoria.find(params[:id])
            render json: @categoria, status: :ok
        end

        def create
            @categoria = Categoria.create!(categoria_params)
            render json: @categoria, status: :created
        end

        def update
            @categoria = Categoria.find(params[:id])
            @categoria.update(categoria_params)
        end

        def destroy
            @categoria = Categoria.find(params[:id])
            @categoria.destroy
        end

        private
        def categoria_params
            params.permit(:nome)
        end
    end    
end

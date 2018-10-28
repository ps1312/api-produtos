Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categorias do
        resources :produtos do
          resources :caracteristicas do
          end
        end
      end
    end
  end
end

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
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

Rails.application.routes.draw do
  resources :products
  namespace :api do
    namespace :v1 do
      resources :products, defaults: {format: 'json'}, only: [:index]
    end
  end
end

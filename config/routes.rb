Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :leads, only: [:create]
    end
  end

  resources :leads, only: [:new, :create, :show]
  root 'pages#index'
end

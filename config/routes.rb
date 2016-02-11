Rails.application.routes.draw do
  resources :leads, only: [:new, :create, :show]
  root 'pages#index'
end

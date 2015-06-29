Rails.application.routes.draw do
  namespace :api do
    resources :products
    resources :list
  end
end

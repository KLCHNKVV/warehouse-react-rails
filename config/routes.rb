Rails.application.routes.draw do
  root 'products#new'
  delete 'delete_by_model_name', to: 'products#destroy'
  resources :products
end

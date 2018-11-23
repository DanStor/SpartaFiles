Rails.application.routes.draw do
  get 'products/index'
  get 'products/:id', to: 'products#show'
  get 'products/edit'
  get 'products/new'
  get 'static/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

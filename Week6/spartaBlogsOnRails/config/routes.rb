Rails.application.routes.draw do
  # get 'posts/index'
  # get 'posts/new'
  # get 'posts/:id', to: 'posts#show'
  # get 'posts/:id/edit', to: 'posts#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  resources :posts do
    resources :comments, :except => [:index, :new, :show]
  end
end

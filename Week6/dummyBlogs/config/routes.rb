Rails.application.routes.draw do
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/edit'
  # get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :posts

  root to: 'posts#index'
end

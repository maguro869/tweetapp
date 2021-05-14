Rails.application.routes.draw do
  get 'users/index'
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  get 'posts/:id' => 'posts#show'
  
  get 'users/index' => 'user#index'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  post 'users/create' => 'users#create'
  post 'users/:id/update' => 'users#update'

  get 'signup' => 'users#new'
  

  get '/' => "home#top"
  get 'about' => "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

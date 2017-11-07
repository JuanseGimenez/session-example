Rails.application.routes.draw do
  root 'static_pages#home'
  resources :chat_rooms
  devise_for :users
  get    '/login-chat',   to: 'sessions#new'
  post   '/login-chat',   to: 'sessions#create'
  delete '/logout-chat',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

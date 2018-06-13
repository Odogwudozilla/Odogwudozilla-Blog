Rails.application.routes.draw do

  devise_for :odogwus, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :posts
  root to: 'static_pages#home'

  get 'static_pages/about'

  get 'static_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

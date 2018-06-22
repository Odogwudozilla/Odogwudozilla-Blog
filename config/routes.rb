Rails.application.routes.draw do

  resources :photo_uploads
  mount RailsAdmin::Engine => '/odogwuadmin', as: 'rails_admin'
  devise_for :odogwus
  resources :posts do
    put 'publish' => 'posts#publish', on: :member
    put 'unpublish' => 'posts#unpublish', on: :member
  end
  root to: 'static_pages#home'

  get 'static_pages/about'

  get 'static_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

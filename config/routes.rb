Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'contact#new'

  resources :contact
  resources :actualite do
    resources :avatars, only: [:create]
  end

  resources :cartables do
    resources :cartable_avatar, only: [:create]
  end

  get 'static_page', to: 'static_page#index'


end

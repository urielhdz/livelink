Rails.application.routes.draw do
  resources :my_links
  resources :my_favorite_links, only: [:create]
  devise_for :users
  authenticated :user do
    root :to => 'welcome#index'
  end
  unauthenticated :user do
    devise_scope :user do
      root :to => "welcome#unregistered", as: :unregistered_root
    end
  end
end

 Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, except: :destroy
  end
  resources :bookmarks, only: :destroy
end

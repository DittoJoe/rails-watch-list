Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, except: :destroy
  end
  resources :bookmarks, only: :destroy
end

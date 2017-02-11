Rails.application.routes.draw do
  devise_for :users
  resources :pins do
    member do
      patch 'vote_for'
    end
  end

  root to: "pins#index"
end

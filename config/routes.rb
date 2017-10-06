Rails.application.routes.draw do
  
  get "/manage", to: "manage/sessions#new"
  namespace :manage do
    resources :events
    resources :breweries
    resource :session, only: [:new, :create, :destroy]
  end

  root "events#index"

  resources :events, only: [:index, :show]
  resources :breweries, only: [:index, :show]

end

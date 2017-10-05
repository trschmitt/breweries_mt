Rails.application.routes.draw do

  get "/manage", to: "manage/sessions#new"

  namespace :manage do
    resources :events
    resources :breweries
    resource :session, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

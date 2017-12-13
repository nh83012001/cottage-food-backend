Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :recipe_transactions
      resources :transactions
      resources :user_recipes
      resources :recipes
      post "/auth", to: "sessions#create"
      get "/current_user", to: "sessions#show"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

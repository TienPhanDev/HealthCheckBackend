Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :show, :destroy, :update]
      resources :sugar_screens
      resources :bp_screens
      resources :vaccination_records

      post '/login', to: 'auth#create' 
      post '/register', to: "users#create", as: "register"
      post '/sugarscreen', to: 'sugar_screens#create'
      post '/bpscreen', to: 'bp_screens#create'
      post '/apicall', to: 'api_posts#api_post'
      post '/apineeds', to: 'api_posts#api_needs'
      post '/apinutrition', to: 'api_posts#api_nutrition'
      post '/vaccineform', to: 'vaccination_records#create'

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

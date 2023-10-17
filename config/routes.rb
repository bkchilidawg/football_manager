Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/teams', to: 'teams#index', as: 'teams_index'
  get '/teams/:id', to: 'teams#show'
  get '/confrences', to: 'confrences#index'
  get '/confrences/new', to: 'confrences#new'
  get '/confrences/edit', to: 'confrences#edit'
  get '/confrences/:id', to: 'confrences#show'
  post '/confrences/:id/', to: 'confrences#edit'

  
  resources :teams
  resources :confrences, only: [:index, :show, :new, :create, :edit, :update]
  resources :confrences do 
    resources :teams, only: [:index], controller: 'confrence_teams'
  end




  # Defines the root path route ("/")
  # root "articles#index"
end

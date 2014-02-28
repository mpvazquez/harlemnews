Harlemnews::Application.routes.draw do
  root "stories#index"
  resources :users do
    # resources :stories, only: [:create, :new]
  end

  resources :stories #, except: [:create, :new]

  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
end

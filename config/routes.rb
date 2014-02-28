Harlemnews::Application.routes.draw do
  root "stories#index"
  resources :users

  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
end

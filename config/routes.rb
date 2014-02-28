Harlemnews::Application.routes.draw do
  root "stories#index"
  resources :users
end

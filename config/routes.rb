KickIt::Application.routes.draw do

  resources :users, only: [:new]

end

Doudou::Application.routes.draw do

  resources :bears

  root to: 'welcome#index'



end

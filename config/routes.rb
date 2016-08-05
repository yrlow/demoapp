Rails.application.routes.draw do
  # resources :users
  resources :microposts

  resources :users do
    resources :microposts, only: [:new, :create]
  end #this is to create a nested resources of micropost within users
  # parking 7 restful routes to this resource name users
  # , except: [:index, :show]
  # , only: [:index, :show]
  root "users#index"

  get '/lyr', to: "users#index", as: 'this_is_my_name'
end

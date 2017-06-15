Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"

  resources :products # automatise routing CRUD + possibilité add contraitnes : , only: [:new, :create, :index, :show] automatise le routing CRUD

  # resources :products équivalent à :
  # # Read action routes (CRUD)
  # get "/products" => "products#index"
  # get "/products/:id" => "products#show" # montre details d'un pdt

  # # Create action routes (CRUD)
  # get "/products/new" => "products#new"  #naming conventionnel
  # post "/products " => "products#create"

  # # Update action routes (CRUD)
  # get "/products/:id/edit" => "products#edit"  #naming conventionnel
  # patch "/products/:id " => "products#update" # patch comme post mais update

  # # Delete action routes (CRUD)
  # delete "/products/:id/" => "products#destroy"  #naming conventionnel

end

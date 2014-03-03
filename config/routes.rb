Myapp::Application.routes.draw do

  root "pages#home"

  get "/index" => "pages#index"
  get "/show" => "pages#show"

  get "login" => 'sign#new'
  get "logout" => 'sign#destroy'
  get "authenticate" => 'sign#create'

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'
  get "/users/:user_id/show" => 'users#show'

  get "/newflightinfo" => "pages#newflightinfo"

  # CREATE
  get "/expenses/new/:trip_id" => "moolah#new"
  get "/expenses/create/:trip_id" => "moolah#create"

  get "/trips/new" => "trips#new"
  get "/trips/create" => "trips#create"

  # READ
  get "/expenses/" => "moolah#expenses"
  get "/expenses/:expense_id/show" => "moolah#show"

  get "/trips" => "trips#trips"
  get "/trips/:trip_id/show" => "trips#show"

  # UPDATE
  get "/expenses/:expense_id/edit" => "moolah#edit"
  get "/expenses/:expense_id/update" => "moolah#update"

  get "/trips/:trip_id/edit" => "trips#edit"
  get "/trips/:trip_id/update" => "trips#update"

  # DELETE
  get "/expenses/:expense_id/delete" => "moolah#destroy"

  get "/trips/:trip_id/delete" => "trips#destroy"





  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

Rails.application.routes.draw do
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

  root "welcome#index"

  # Create routes for tweets_controller
  # the follwing routes can all be made at one shot by:
  #   resources :tweets
  get 'tweets' => 'tweets_controller#index', as: :tweets
  post 'tweets' => 'tweets_controller#create'

  get 'tweets/new' => 'tweets_controller#new', as: :new_tweet
  get 'tweets/:id/edit' => 'tweets_controller#edit', as: :edit_tweet

  get 'tweets/:id' => 'tweets_controller#show', as: :tweet
  patch 'tweets/:id' => 'tweets_controller#update'
  put 'tweets/:id' => 'tweets_controller#update'
  delete 'tweets/:id' => 'tweets_controller#destroy'
end

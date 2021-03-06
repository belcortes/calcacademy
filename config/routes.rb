Calcacademy::Application.routes.draw do
  root 'home#index'

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}

  scope :my_scope do
    resources :users
  end
  # post '/users/omniauth_authorize' => 'users#omniauth_authorize'
  post '/add_score' => 'users#add_score'
  post '/add_topic' => 'users#add_topic'
  post '/add_subtopic' => 'users#add_subtopic'
  resources :subjects do
    member do
      post 'index'
    end
  end
  resources :topics
  resources :subtopics
  resources :questions
  resources :answers
  # get 'sessions/new' => 'sessions#new'
  # post 'sessions' => 'sessions#create'
  # delete 'logout' => 'sessions#destroy'
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
    # resources :subjects do
    #   resources :topics
    # end

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

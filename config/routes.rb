FirstEdc::Application.routes.draw do


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :baselines
  resources :treatment_completions
  resources :follow_up3_weeks
  resources :follow_up6_weeks
  resources :follow_up18_weeks
  resources :follow_up6_months
  resources :follow_up1_years

  resources :subjects do
    resources :baselines
    resources :treatment_completions
    resources :follow_up3_weeks
    resources :follow_up6_weeks
    resources :follow_up18_weeks
    resources :follow_up6_months
    resources :follow_up1_years
    match '/screening', to: 'subjects#screening', as: :screening
    match '/baseline', to: 'baselines#baseline', as: :baseline #Allows for display of Subjects? Why?
    match '/tc', to: 'subjects#tc', as: :tc
    match '/fu3week', to: 'subjects#fu3week', as: :fu3week
    match '/fu6week', to: 'subjects#fu6week', as: :fu6week
    match '/fu18week', to: 'subjects#fu18week', as: :fu18week
    match '/fu6month', to: 'subjects#fu6month', as: :fu6month
    match '/fu1year', to: 'subjects#fu1year', as: :fu1year
  end
  # match '/newbaseline', to: 'baselines#new'
  


  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/edit', to: 'users#edit'
  
  root to: 'static_pages#home'

  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

  match '/subjects', to: 'subjects#show'
  match '/newsubject', to: 'subjects#new'
  match '/subjects', to: 'subjects#index'
  match '/showsubject', to: 'subjects#show'
  match '/editsubject', to: 'subjects#edit'
  match '/randomize', to: 'subjects#randomize'
  match '/screening_log', to: 'subjects#screening_log'


  # match '/populate_values', to: 'subjects#screening'



  
 

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

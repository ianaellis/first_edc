FirstEdc::Application.routes.draw do

  get "follow_up_log/index"

  devise_for :users
  resources :users do
    match '/permission', to: 'users#permission'
    match '/users', to: 'users#edit' 
  end
  resources :sessions, only: [:new, :create, :destroy]

  match '/race_gender_table', to: 'baselines#race_gender_table'
  resources :baselines

  match '/base_general_demo', to: 'baselines#base_general_demo'
  match '/baseline_view', to: 'baselines#baseline_view'

  resources :treatment_completions
  match '/tc_view', to: 'treatment_completions#tc_view'
  resources :psychosocial_scales
  resources :follow_up3_weeks
  match '/fu3week_view', to: 'follow_up3_weeks#fu3week_view'
  resources :follow_up6_weeks
  resources :follow_up18_weeks
  match '/fu18week_view', to: 'follow_up18_weeks#fu18week_view'
  resources :follow_up6_months
  match '/fu6month_view', to: 'follow_up6_months#fu6month_view'
  resources :follow_up1_years
  match '/fu1year_view', to: 'follow_up1_years#fu1year_view'
  
  resources :data_queries

  resources :follow_up_logs
  match '/follow_up_log_site', to: 'follow_up_logs#show'
  match '/edit_follow_up_logs', to: 'follow_up_logs#edit'

  resources :subjects do
    match '/screening', to: 'subjects#screening'
  end
  match '/newsubject', to: 'subjects#new'
  match '/randomize', to: 'subjects#randomize'
  match '/screening_log', to: 'subjects#screening_log'
  match '/screening_crf_data', to: 'subjects#screening_crf_data'
  # resources :comments do
  #   match '/comment', to: 'subjects#update'
  # end

  
  devise_scope :user do
    root to: 'static_pages#home'
    match '/sessions/user', to: 'devise/sessions#create', via: :post
    # match '/profile', to: 'users#show', via: :post
    match '/edit', to: 'users#edit'
  end  

  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  

  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'


  # root to: 'static_pages#home'
  # match '/subjects', to: 'subjects#show'
  # match '/subjects', to: 'subjects#index'
  # match '/showsubject', to: 'subjects#show'
  # match '/editsubject', to: 'subjects#edit'


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

end

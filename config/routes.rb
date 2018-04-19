FirstEdc::Application.routes.draw do

  # get "follow_up_log/index"

  # devise_for :users
  # resources :users do
  #   match '/permission', :to => 'users#permission', :via => [:get, :post]
  #   match '/users', :to => 'users#edit' , :via => [:get, :post]
  # end
  # resources :sessions, only: [:new, :create, :destroy]

  # match '/race_gender_table', :to => 'baselines#race_gender_table', :via => [:get, :post]
  # # match '/race_gender_table', :to => 'baselines#race_gender_table', :via => [:get, :post]
  # resources :baselines

  # match '/base_general_demo', :to => 'baselines#base_general_demo', :via => [:get, :post]
  # match '/baseline_view', :to => 'baselines#baseline_view', :via => [:get, :post]

  # resources :treatment_completions
  # match '/tc_view', :to => 'treatment_completions#tc_view', :via => [:get, :post]
  # resources :psychosocial_scales
  # resources :follow_up3_weeks
  # match '/fu3week_view', :to => 'follow_up3_weeks#fu3week_view', :via => [:get, :post]
  # resources :follow_up6_weeks
  # resources :follow_up18_weeks
  # match '/fu18week_view', :to => 'follow_up18_weeks#fu18week_view', :via => [:get, :post]
  # resources :follow_up6_months
  # match '/fu6month_view', :to => 'follow_up6_months#fu6month_view', :via => [:get, :post]
  # resources :follow_up1_years
  # match '/fu1year_view', :to => 'follow_up1_years#fu1year_view', :via => [:get, :post]
  
  # resources :data_queries

  # resources :follow_up_logs
  # match '/follow_up_log_site', :to => 'follow_up_logs#show', :via => [:get, :post]
  # match '/edit_follow_up_logs', :to => 'follow_up_logs#edit', :via => [:get, :post]

  # resources :subjects do
  #   match '/screening', :to => 'subjects#screening', :via => [:get, :post]
  #   match '/comment', :to => 'subjects#comment', :via => [:get, :post]
  # end

  # match '/screening_view', :to => 'subjects#screening_view', :via => [:get, :post]
  # match '/newsubject', :to => 'subjects#new', :via => [:get, :post]
  # match '/randomize', :to => 'subjects#randomize', :via => [:get, :post]
  # match '/screening_log', :to => 'subjects#screening_log', :via => [:get, :post]
  # match '/screening_crf_data', :to => 'subjects#screening_crf_data', :via => [:get, :post]
  # # resources :comments do
  # # end

  
  # devise_scope :user do
  #   root to: 'static_pages#home'
  #   match '/sessions/user', :to => 'devise/sessions#create', :via => [:get, :post]
  #   # match '/profile', to: 'users#show', via: :post
  #   match '/edit', :to => 'users#edit', :via => [:get, :post]
  # end  

  # match '/signup', :to => 'users#new', :via => [:get, :post]
  # match '/signin', :to => 'sessions#new', :via => [:get, :post]
  # match '/signout', :to => 'sessions#destroy', via: :delete
  

  # match '/help', :to => 'static_pages#help', :via => [:get, :post]
  # match '/about', :to => 'static_pages#about', :via => [:get, :post]
  # match '/contact', :to => 'static_pages#contact', :via => [:get, :post]


  get "follow_up_log/index"

#User Authentication



  devise_for :users
  resources :users do
    match '/permission', :to => 'users#permission', :via => [:get, :post]
    match '/users', :to => 'users#edit' , :via => [:get, :post]
  end

    # match '/sessions/signout', :to => 'devise/sessions#destroy', via: :delete
  devise_scope :user do
    root to: 'static_pages#home'
    match '/sessions/user', :to => 'devise/sessions#create', :via => [:get, :post]
    match '/edit', :to => 'users#edit', :via => [:get, :post]
  end  

  match '/signup', :to => 'users#new', :via => [:get, :post]
  match '/signin', :to => 'sessions#new', :via => [:get, :post]
  match '/signout', :to => 'sessions#destroy', via: :delete

  #Allow user to log in, carry on session
  resources :sessions, only: [:new, :create, :destroy]

#Statis Pages
  match '/help', :to => 'static_pages#help', :via => [:get, :post]
  match '/about', :to => 'static_pages#about', :via => [:get, :post]
  match '/contact', :to => 'static_pages#contact', :via => [:get, :post]


#CRF Routes
  resources :baselines
  match '/baseline_view', :to => 'baselines#baseline_view', :via => [:get, :post]
  match '/race_gender_table', :to => 'baselines#race_gender_table', :via => [:get, :post]
  match '/base_general_demo', :to => 'baselines#base_general_demo', :via => [:get, :post]

  resources :follow_up3_weeks
  match '/fu3week_view', :to => 'follow_up3_weeks#fu3week_view', :via => [:get, :post]

  resources :treatment_completions
  match '/tc_view', :to => 'treatment_completions#tc_view', :via => [:get, :post]

  resources :follow_up18_weeks
  match '/fu18week_view', :to => 'follow_up18_weeks#fu18week_view', :via => [:get, :post]
  
  resources :follow_up6_months
  match '/fu6month_view', :to => 'follow_up6_months#fu6month_view', :via => [:get, :post]
  
  resources :psychosocial_scales
  
  #Route for a later feature, not yet implemented
  resources :follow_up1_years
  match '/fu1year_view', :to => 'follow_up1_years#fu1year_view', :via => [:get, :post]
  
  resources :data_queries

  resources :follow_up_logs
  match '/follow_up_log_site', :to => 'follow_up_logs#show', :via => [:get, :post]
  match '/edit_follow_up_logs', :to => 'follow_up_logs#edit', :via => [:get, :post]
  
#Subjects Routes
  resources :subjects do
    match '/screening', :to => 'subjects#screening', :via => [:get, :post]
    match '/comment', :to => 'subjects#comment', :via => [:get, :post]
  end

  match '/screening_view', :to => 'subjects#screening_view', :via => [:get, :post]
  match '/newsubject', :to => 'subjects#new', :via => [:get, :post]
  match '/randomize', :to => 'subjects#randomize', :via => [:get, :post]
  match '/screening_log', :to => 'subjects#screening_log', :via => [:get, :post]
  match '/screening_crf_data', :to => 'subjects#screening_crf_data', :via => [:get, :post]
end

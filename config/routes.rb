Rails.application.routes.draw do
 root to: 'posts#home'
 
  get '/admin' => 'admin/sessions#new'

  get '/login' => 'admin/sessions#index'
  get '/logout' => 'admin/sessions#destroy'

  namespace :admin do

    resources :dashboard, only: [:index]
    resources :articles, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :settings, only: [:new, :create, :edit, :update]
    resources :categories
    resources :posts do
      resources :sections
    end
    resources :tags, except: [:index]
    resources :galleries
    resources :images, only: [:index, :edit, :update, :destroy]
    resources :links
    resources :sessions, only: [:index, :create, :destroy]
    resources :moderators, only: [:index, :new, :create, :edit, :update]
    resources :uploads, only: [:create, :destroy]

  end

  resources :articles do

  end

  resources :illustrations do

  end

  resources :hms do

  end

  resources :digitals do

  end

  resources :illustrasjonsarkiv, controller: 'illustrations'
  resources :digitalpedagogikk, controller: 'digitals'
  resources :bokasnettressurs, controller: 'posts'
  resources :aktuelt, controller: 'articles'
  resources :omoss, controller: 'articles'

  resources :posts do
    collection do 
      get :search, :action => 'search_post', :as => 'search_post'
      get 'search/:q', :action => 'search', :as => 'search'
    end
  end

  
end

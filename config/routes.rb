Rails.application.routes.draw do
  devise_for :users
  resources :places do
    collection do
      get 'search'
    end
    resources :reviews, except: [:index, :show]
  end
 root 'places#index'

 match '/about_us',   to: 'pages#about_us',  via: :get
 match '/contact_us', to: 'pages#contact_us', via: :get
 match '/beach', to: 'pages#beach', via: :get
 match '/all', to: 'pages#all', via: :get
 match '/users', to: 'pages#users', via: :get
end
 
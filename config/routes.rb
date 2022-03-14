Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'
  get 'leadgen/advertising/test/lead', to: 'pages#contact', as: 'lead'
  resources :blogs

  resources :posts
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:something', to: 'pages#something'

  root "pages#home"
end

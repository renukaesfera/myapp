Rails.application.routes.draw do
  devise_for :pages, :controllers => {:registrations => "pages/registrations"}

  get 'pages/home'
  get 'pages/about_us'
  get 'pages/blog'
  get 'pages/contact_us'
  
  resources :posts
  resources :contact, only:[:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end

Rails.application.routes.draw do
  devise_for :users
root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts
  get 'contact-us', to: 'contacts#new'
end

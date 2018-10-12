Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  devise_for :views
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
end

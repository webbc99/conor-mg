Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, :skip => [:registrations]
  devise_for :views
  resources :articles do
    resources :uploads
  end
  resources :portfolio_items do
    resources :uploads
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'portfolio', to: 'portfolio_items#index'
  get 'download_cv', to: 'welcome#download_cv'
end

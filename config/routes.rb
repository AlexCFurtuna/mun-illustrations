Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'users/sessions'
  }
  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'upload' => 'images#new', :as => 'upload'

  resources :images

  resources :categories

  root 'static_pages#index'

  resources :images, :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

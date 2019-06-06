Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'upload' => 'images#new', :as => 'upload'

  root 'static_pages#index'

  resources :images, :categories

end

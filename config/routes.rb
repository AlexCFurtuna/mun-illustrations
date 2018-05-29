Rails.application.routes.draw do
  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'upload' => 'images#new', :as => 'upload'

  get 'images/create'

  get 'images/destroy'

  get 'images/index'

  get 'categories/new'

  get 'categories/create'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

  get 'categories/show'

  root 'static_pages#index'

  resources :images, :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

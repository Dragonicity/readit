Rails.application.routes.draw do

  get 'tags/show'

  get 'users/show'

  root 'stories#index'

  resources :tags
  resources :users
  resource :session
  resources :stories do
    collection do
      get 'bin'
    end
    resources :votes
  end

end

Rails.application.routes.draw do

  root 'stories#index'

  resources :users
  resource :session
  resources :stories do
    collection do
      get 'bin'
    end
    resources :votes
  end

end

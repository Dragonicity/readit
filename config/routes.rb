Rails.application.routes.draw do

  root 'stories#index'
  
  get 'votes/create'

  resources :stories do
    resources :votes do
    end
  end
  
  resource :session

end

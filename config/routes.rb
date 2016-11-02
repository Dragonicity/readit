Rails.application.routes.draw do

  get 'votes/create'

  resources :stories do
    resources :votes do
    end
  end
  
resource :session

end

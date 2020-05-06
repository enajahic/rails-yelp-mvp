Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
  
  end
  resources :reviews, only: %i[new create]
  resources :reviews, only: :destroy

  

end

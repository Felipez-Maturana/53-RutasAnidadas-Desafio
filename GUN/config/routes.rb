Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups do 
    resources :users do
      resources :notes
    end
  end
end

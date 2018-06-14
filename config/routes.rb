Rails.application.routes.draw do 
  namespace :api do
      resources :trips do
        resources :albums
      end
    end
end

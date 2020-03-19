Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, except: [:delete]
  resources :songs, except: [:delete]
  resources :genres, except: [:delete]
end

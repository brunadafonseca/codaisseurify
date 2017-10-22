Rails.application.routes.draw do
  root 'pages#home'

  namespace :api do
    resources :artists do
      resources :songs
      delete '/songs', to: 'songs#destroy_all'
    end
  end

  resources :artists do
    resources :songs
    resources :photos
  end
end

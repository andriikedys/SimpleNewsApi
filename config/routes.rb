Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :articles, only: [:index, :show], defaults: {format: 'json'}
    end
  end

  root to: 'articles#index'
  resources :articles, only: [:index, :show]
  post 'import', to: 'articles#import'



end

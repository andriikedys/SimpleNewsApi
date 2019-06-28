Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resource :articles, only: [:index, :show], defaults: {format: 'json'}
    end
  end

  root to: 'articles#index'
  resource :articles, only: [:index, :show] do
    post 'import', to: 'articles#import'
  end



end

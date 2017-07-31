Rails.application.routes.draw do
  devise_for :users
  resource :users ,only: [:edit,:update]
  resource :groups
    resource :messages

  root 'groups#index'
end

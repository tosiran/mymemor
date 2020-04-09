Rails.application.routes.draw do
  root to: 'top#index'
  
  resources :memos, only: [:index, :new, :show, :create, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end
  
  devise_for :users
  resources :users, only: :show

end

Rails.application.routes.draw do
  root to: 'memos#index'
  
  resources :memos, only: [:index, :new, :show, :create, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end
  
  devise_for :users
end

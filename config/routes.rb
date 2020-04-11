Rails.application.routes.draw do
  root to: 'top#index'
  
  resources :memos, only: [:index, :new, :show, :create, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end
  
  devise_for :users
  resources :users, only: :show

  post   '/like/:memo_id' => 'likes#like',   as: 'like'
  delete '/like/:memo_id' => 'likes#unlike', as: 'unlike'

end

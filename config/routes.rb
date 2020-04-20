Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  
  resources :memos, only: [:index, :new, :show, :create, :edit, :update, :destroy] do
    collection do
      get :search
    end
  end
  
  resources :users, only: :show

  post   '/like/:memo_id' => 'likes#like',   as: 'like'
  delete '/like/:memo_id' => 'likes#unlike', as: 'unlike'

end

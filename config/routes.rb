Rails.application.routes.draw do
  resources :memos, only: [:index, :new, :show, :create, :edit]

end

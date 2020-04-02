Rails.application.routes.draw do
  resources :memos, only: :index

end

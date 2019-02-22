Rails.application.routes.draw do
  resources :quotes do
    resources :comments, only: [:new, :create, :destroy]
  end
end

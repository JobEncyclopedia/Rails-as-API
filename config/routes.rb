Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get 'index' => 'application#index'
  post 'create' => 'application#create'
end

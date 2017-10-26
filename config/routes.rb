Rails.application.routes.draw do
  devise_for :users
  root 'documents#index'
  get '/documents' => redirect('/')
  resources :documents, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

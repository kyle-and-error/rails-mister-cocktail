Rails.application.routes.draw do
  get 'dose/new'
  get 'dose/create'
  get 'cocktails/show'
  get 'cocktails/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: :new
  end
end

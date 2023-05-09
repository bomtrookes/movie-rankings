Rails.application.routes.draw do
  get 'charts/new'
  root "rankings#index"
  resources :rankings, except: [:edit, :update] do
    resources :charts, only: [:new, :create]
  end
  resources :charts, only: :destroy

end

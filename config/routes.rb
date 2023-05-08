Rails.application.routes.draw do

  resources :movies do
    resources :rankings
  end

end

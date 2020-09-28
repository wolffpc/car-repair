Rails.application.routes.draw do
  get 'welcome/index'

  resources :appointments do
    resources :ratings
    member do
      get 'thank_you'
      get 'success'
    end
  end

  root 'welcome#index'
end

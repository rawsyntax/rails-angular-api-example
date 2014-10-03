Rails.application.routes.draw do
  get 'example' => 'example#index'

  namespace :api do
    resources :employees, defaults: { format: :json }
  end
end

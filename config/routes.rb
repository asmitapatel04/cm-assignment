Rails.application.routes.draw do
  root 'employees#index'
  resources :employees, only: %i[index edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

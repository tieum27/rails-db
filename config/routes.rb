Rails.application.routes.draw do
  root 'users#index'

  get 'users/index'

  get 'users/register'

  get 'users/phone'

  get 'users/user_find'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

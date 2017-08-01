Rails.application.routes.draw do

	      get 'socials/index'
                     get  'details/index'
                    get  'users/index'


    get 'mortgages/index'
    get 'dynamics/index'
  root 'business#index'
  resources :business

    get 'settings/index'

    resources :users
    resources :sessions

        delete '/logout' => 'sessions#destroy', as: :logoout_li
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

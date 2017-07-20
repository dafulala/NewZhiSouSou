Rails.application.routes.draw do

	      get 'she_baojiankong/index'
                     get  'qi_yexiangqing/index'
                    get  'users/index'


    get 'di_yajiankong/index'
    get 'jian_kongdongtai/index'
  root 'qi_yejiankong#index'
  resources :qi_yejiankong

    get 'xi_tongshezhi/index'
    get 'qiyediya/index'
    resources :users
    resources :sessions

        delete '/logout' => 'sessions#destroy', as: :logoout_li
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

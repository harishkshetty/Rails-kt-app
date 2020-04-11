Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources:login, only:[:show, :index,:new,:create] do
  # get 'homeget' ,to:'login#homeget'
  collection do
    get :search
  end
  member do
    get :record
    get :add
    post :update_user


  end

end

end

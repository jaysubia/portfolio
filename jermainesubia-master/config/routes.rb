Rails.application.routes.draw do
  
  get 'contacts/index'

  get 'document/download'

  root 'creatives#index'

  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  get 'sessions/index'
  get 'sessions/logout'
  get 'sessions/profile'
  get 'sessions/login'

  get 'administrators/index'
  get 'administrators/new'

  resources :users do
   member do
    get :delete
  end
end

  resources :contacts do
   member do
    get :delete
  end

end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

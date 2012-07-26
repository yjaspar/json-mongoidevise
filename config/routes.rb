Rails3MongoidDevise::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "home#index"
  devise_scope :user do
    get "/users/login" => "devise/sessions#new"
    get "/users/new" => "devise/registrations#new"
    post "/users/new" => "devise/registrations#create", :as => :new_user_registration
  end
  
  devise_for :users
  resources :users, :only => [:show, :index]
  
end

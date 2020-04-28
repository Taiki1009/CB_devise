Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    :registrations => 'users/registrations',
    sessions: 'users/sessions'
  }  
  
  root 'home#index'   # deviseでは、signup/login後にルートに飛ぶ仕様 → 一番最初に来て欲しい画面を設定
  get 'home/index'
  

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end  
end

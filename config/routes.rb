Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  
  
  root 'home#index'   # deviseでは、signup後にルートに飛ぶ仕様 → 一番最初に来て欲しい画面を設定
  get 'home/index'
  
end

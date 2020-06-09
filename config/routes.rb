Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root "boards#index" #boardsコントローラクラスのindexメソッドで処理
  get "boards", to: "boards#index"
  get "boards/new", to: "boards#new"
  post "boards", to: "boards#create"
end

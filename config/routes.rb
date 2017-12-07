Rails.application.routes.draw do

 root 'home#index'

 post "results" => 'home#results'
 get "results" => 'home#results'

get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

 get "test" => 'home#test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

 get '/guides', to: "user_guides#index"
 get '/characters', to: "characters#index"
 
 get '/guides/:id', to: "user_guides#show"
 get '/characters/:id', to: "characters#show"

 get '/login', to: "users#login"

 patch '/guides/:id', to: "user_guides#update"

 delete '/guides/:id', to: "user_guides#destroy"

 post "/guides", to: "user_guides#create"
 
end

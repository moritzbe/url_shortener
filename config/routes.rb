Rails.application.routes.draw do
  #The router: Commands and talks to Controller
 get "/:url" => "home#home"

 # post "/create" => "home#create"
end

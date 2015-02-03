Rails.application.routes.draw do
  #The router: Commands and talks to Controller
 get "/:url" => "home#home"
 get "/" => "home#home"
 get "/most_visited_pages" =>"home#stats"

 # post "/create" => "home#create"
end

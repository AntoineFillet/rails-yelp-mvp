Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :restaurants do
     resources :reviews, only: [ :new, :create ]
    end
  # A visitor can see the list of all restaurants.
  # GET "restaurants"
  # get "restaurants", to: "restaurants#index"
  # # She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
  # # GET "restaurants/new"
  # # POST "restaurants"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # # She/He can see the details of a restaurant, with all the reviews related to the restaurant.
  # # GET "restaurants/38"
  # # NB: The `show` route needs to be *after* `new` route.
  # get "restaurants/:id", to: "restaurants#show"

  # # She/He can see the details of a restaurant, with all the reviews related to the restaurant.
  # # GET "restaurants/38"
  # get "restaurants/:restaurant_id/reviews", to: "reviews#index"
  # # She/He can add a new review to a restaurant
  # # GET "restaurants/38/reviews/new"
  # # POST "restaurants/38/reviews"
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # post "restaurants/:restaurant_id/reviews",    to: "reviews#create"
  # # She/He can see the details of a restaurant, with all the reviews related to the restaurant.
  # # GET "restaurants/38"
  # get "reviews/:id", to: "reviews#show"
  # get "reviews/:id/edit", to: "reviews#edit"
end




Wisdomtoliveby::Application.routes.draw do

  root :to => "Adages#index"

  # Admin
  get "adages/admin" => "Adages#admin", :as => "admin_adages"

  # Create
  get "adages/new" => "Adages#new", :as => "new_adage"
  post "adages" => "Adages#create", :as => "adage"

  # Read
  get "adages" => "Adages#index", :as => "adages"
  get "adages/:id" => "Adages#show", :as => "adage"

  # Update
  get "adages/:id/edit" => "Adages/#edit", :as => "adage"
  put "adages/:id" => "Adages/#updage", :as => "adage"

  # Delete
  delete "adages/:id" => "Adages#delete", :as => "adage"



end

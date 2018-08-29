Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/get_location/'  => 'main#get_location',   :as => :get_location,  :via => [:get]
end

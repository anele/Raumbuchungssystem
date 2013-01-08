Raumbuchungssystem::Application.routes.draw do
  get "static/index"

  resources :buchungs

  resources :besitzts

  resources :raums

  resources :kundes

  resources :ausstattungs
  
  resources :sessions
  
get "static/l1_kontakt"  
get "static/index"
get "static/l1_buchen"
get "raums/index"
get "hello" => "raums#hello"
get "raums/hello" => "raums#hello"
get "static/home"


get "search" =>"raums#search"
get "raums/search/:id"=>"raums#search" 
post "search" =>"raums#search"
post "raums/search/:id"=>"raums#search"

get "current_user" =>"kundes#current_user"
get "kundes/current_user/:id"=>"kundes#current_user" 
post "current_user" =>"kundes#current_user"
post "kundes/current_user/:id"=>"kundes#current_user"

get "personal" =>"kundes#personal"
get "kundes/personal/:id"=>"kundes#personal" 
post "personal" =>"kundes#personal"
post "kundes/personal/:id"=>"kundes#personal"




get "test"=>"raums#test"
get "raums/test/"=>"raums#test"
post "raums/test"

get "verfuegbarkeit"=>"raums#verfuegbarkeit"
get "raums/verfuegbarkeit"=>"raums#verfuegbarkeit"
post "verfuegbarkeit" =>"raums#verfuegbarkeit"
post "raums/verfuegbarkeit"=>"raums#verfuegbarkeit"

get "login"=>"kundes#login"
get "kundes/login"=>"kundes#login"
post "login" =>"kundes#login"
post "kundes/login"=>"kundes#login"

get "l2_anfrage" =>"buchungs#l2_anfrage"
get "buchungs/l2_anfrage"=>"buchungs#l2_anfrage" 
post "l2_anfrage" =>"buchungs#l2_anfrage"
post "buchungs/l2_anfrage"=>"buchungs#l2_anfrage"


get "restobooking" =>"buchungs#restobooking"
get "buchungs/restobooking/:id"=>"buchungs#restobooking" 
post "restobooking" =>"buchungs#restobooking"
post "buchungs/restobooking/:id"=>"buchungs#restobooking"

root :to => "static#index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

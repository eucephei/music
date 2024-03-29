ActionController::Routing::Routes.draw do |map|
  map.root :controller => :albums
  map.resources :artists
  map.resources :albums
  map.resources :tracks
  map.resources :users
  
  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

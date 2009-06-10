ActionController::Routing::Routes.draw do |map|
  map.root_nominee '', :controller => 'nominees', :action => 'index', :conditions => { :subdomain => true}

  map.login 'login', :controller => "user_sessions", :action => "new"
  map.logout 'logout', :controller => "user_sessions", :action => "destroy"

  map.resources :user_sessions
  map.resources :users
  map.resources :nominees

  map.new_nominee 'new', :controller => 'nominees', :action => 'new', :subdomain => false

  map.root :nominees

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

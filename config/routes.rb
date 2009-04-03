ActionController::Routing::Routes.draw do |map|
  map.resources :pages
  map.resources :contents
  map.resources :newnesses
  map.resources :archives
  map.resources :catarcs
  map.resources :activities
  map.resources :costumers
  map.resources :notices
  map.resources :configurations
  map.resources :users
  map.logout '/logout', :controller => 'admin/auth', :action => 'logout'
  map.login '/login', :controller => 'admin/auth', :action => 'login'
  map.admin '/admin', :controller => 'admin/notices', :action => 'index'
  map.namespace :admin do |admin|
	admin.resources :users
	admin.resources :configurations
	admin.resources :notices
	admin.resources :costumers
	admin.resources :activities
	admin.resources :catarcs
	admin.resources :archives
	admin.resources :newnesses
	admin.resources :contents
	admin.resources :pages
  end
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

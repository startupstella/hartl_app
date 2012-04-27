HartlApp::Application.routes.draw do

get "users/new"
 
root to: 'static_pages#home'

 match '/help', to: 'static_pages#help'

match '/about', to: 'static_pages#about'
	
match '/contact', to: 'static_pages#contact'

match '/signup', to: 'users#new'

  resources :microposts

  resources :users

 # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

end

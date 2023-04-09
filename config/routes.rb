Rails.application.routes.draw do
  devise_for :users,
	  controllers: {
	    sessions: 'users/sessions',
	    registrations: 'users/registrations'   
	  }
	get '/member-data', to: 'members#show'    # this works with devise-jwt it's for cookies
	resource :members     # for devise-jwt

	post '/checkout', to: 'checkout#create'   # for stripe checkout 
	
	  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
	
	  # Defines the root path route ("/")
	  # root "articles#index"

end

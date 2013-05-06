Blogger::Application.routes.draw do
	resources :articles do
		resources :comments
	end
  resources :tags
  resources :authors
	root to: 'articles#index'
  
  resources :author_sessions, only: [ :new, :create, :destroy ]

  match 'login'  => 'author_sessions#new'
  match 'logout' => 'author_sessions#destroy'
  
end


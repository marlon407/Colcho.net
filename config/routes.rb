
Colchonet::Application.routes.draw do
  	LOCALES = /en|pt\-BR/
  	scope "(:locale)", locale: LOCALES do
	    resources :rooms
	    resources :users
	    resource :confirmation, only: [:show]
	    resource :user_sessions, only: [:create, :new, :destroy]
	end
	get '/:locale' => 'home#index', locale: LOCALES
	root "home#index"
end
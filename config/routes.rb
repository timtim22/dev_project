Rails.application.routes.draw do
	resources :movies, except: [:destroy, :edit]
end

Rails.application.routes.draw do
	resources :movies, except: [:destroy, :show, :edit]
end

Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
                                                            # Notice : users is a namespace

	resources :products, only: [:index, :show]
	root "products#index"
	
  namespace :admin do
    resources :products
  end
end

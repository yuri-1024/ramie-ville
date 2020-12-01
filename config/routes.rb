Rails.application.routes.draw do

  root 'public/homes#top'

  devise_for :creaters, controllers: {
  	sessions: 'creaters/sessions',
  	passwords: 'creaters/passwords',
  	registrations: 'creaters/registrations'
  }

  devise_for :admins, controllers: {
  	sessions:      'admins/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
  }

  devise_for :end_users, controllers: {
  	sessions:      'end_users/sessions',
  	passwords:     'end_users/passwords',
  	registrations: 'end_users/registrations'
  }


    namespace :admins do
	    resources :items, only:[:index, :new, :show, :edit, :update]
	    resources :orders, only:[:index, :show, :update]
	    resources :end_users, only:[:index, :show, :edit, :update]
	    resources :creaters, only:[:index, :show, :edit, :update]
	    resources :contacts, only:[:index, :show, :update]
	    resources :homes, only:[:index]
    end

    namespace :creaters do
      resources :items, only:[:index, :new, :create, :show, :edit, :update]
      resources :order_items, only:[:index, :show, :update]
      resources :end_users, only:[:show]
      resources :profiles, only:[:show, :edit, :update]
      resources :homes, only:[:index]
    end

  
    scope module: :public do
	  	get 'about' => 'homes#about'
	  	get 'contact' => 'homes#top'
	  	post 'check' => 'homes#check'
	  	get 'thanks' => 'homes#thanks'
      resources :items, only:[:index, :show]
      resources :carts, only:[:index, :update, :destroy, :create]
    end

end
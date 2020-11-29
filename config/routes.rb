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
  
  scope module: :public do
  	get 'about' => 'public/homes#top'
  	get 'contact' => 'public/homes#top'
  	post 'check' => 'public/homes#check'
  	get 'thanks' => 'public/homes#thanks'
  end

end

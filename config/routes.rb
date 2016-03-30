Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }

  get 'welcome/index'

  get 'settings' => 'users#settings'

  root 'welcome#index'

end

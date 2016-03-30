Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  get 'settings' => 'users#settings'

  root 'welcome#index'

end

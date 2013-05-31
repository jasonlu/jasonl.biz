JasonlBiz::Application.routes.draw do
  mount RailsAdmin::Engine => '/excalibur', :as => 'rails_admin'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root :to => 'high_voltage/pages#show', :id => 'welcome'
  #root :to => "home#index"

end

AmgcorpCom::Application.routes.draw do

  root :to => 'root#home'

  resources :profiles, :controller => :profiles

  resources :press, :controller => :press_releases, :as => :press_releases

  match 'home' => 'root#home', :as => :public_home
  match 'about_us' => 'root#about_us', :as => :public_about_us
  match 'owned_venues' => 'root#owned_venues', :as => :public_owned_venues
  match 'operated_venues' => 'root#operated_venues', :as => :public_operated_venues
  match 'client_venues' => 'root#client_venues', :as => :public_client_venues
  match 'services' => 'root#services', :as => :public_services
  match 'contact' => 'root#contact', :as => :public_contact

  match 'admin' => 'root#admin'
  match 'sign_out' => 'root#sign_out'

end

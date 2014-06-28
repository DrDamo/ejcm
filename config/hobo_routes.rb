# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Railsapp::Application.routes.draw do


  # Resource routes for controller otherinfos
  resources :otherinfos


  # Resource routes for controller friendsupports
  resources :friendsupports


  # Resource routes for controller loneworks
  resources :loneworks


  # Resource routes for controller referrals
  resources :referrals


  # Resource routes for controller familysupports
  resources :familysupports


  # Resource routes for controller otherservices
  resources :otherservices


  # Resource routes for controller friends
  resources :friends


  # Resource routes for controller spreviews
  resources :spreviews


  # Resource routes for controller othersupports
  resources :othersupports


  # Resource routes for controller contacts
  resources :contacts


  # Resource routes for controller mentals
  resources :mentals


  # Resource routes for controller supportplans
  resources :supportplans


  # Resource routes for controller users
  resources :users, :only => [:edit, :show, :create, :update, :destroy] do
    member do
      get 'account'
      put 'accept_invitation', :action => 'do_accept_invitation'
      get 'accept_invitation'
      put 'reset_password', :action => 'do_reset_password'
      get 'reset_password'
    end
  end

  # User routes for controller users
  post 'login(.:format)' => 'users#login', :as => 'user_login_post'
  get 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  get 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'
  post 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password_post'


  # Resource routes for controller nextofkins
  resources :nextofkins


  # Resource routes for controller yots
  resources :yots


  # Resource routes for controller learnings
  resources :learnings


  # Resource routes for controller socials
  resources :socials


  # Resource routes for controller criminals
  resources :criminals


  # Resource routes for controller owngps
  resources :owngps


  # Resource routes for controller physicals
  resources :physicals

  namespace :admin do


    # Resource routes for controller admin/users
    resources :users do
      collection do
        post 'invite', :action => 'do_invite'
        get 'invite'
      end
    end

  end

  namespace :concerns do

  end

end

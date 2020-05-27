Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :members, except: [:index]
  resources :buildings
  resources :locations
  resources :oaths
  resources :attendances
  resources :cults
  resources :meetings
  
  get '/sign_in', to: 'members#sign_in', as: 'sign_in'
  post '/get_in', to: 'members#get_in'
  get '/sign_out', to: 'members#sign_out', as: 'sign_out'
  get '/sign_up', to: 'members#sign_up', as: 'sign_up'
  get '/oaths/:id/donate', to: 'oaths#donate', as: 'donate'



  #get '/', to: 'cults#start'
end

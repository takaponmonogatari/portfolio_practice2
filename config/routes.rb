Rails.application.routes.draw do
  
  root to: "homes#top"
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}

namespace :admins do
  resources :schools,only: [:index, :new, :create, :show, :edit, :update]
end
end

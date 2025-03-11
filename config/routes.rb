Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations], controller:{
    sessions: "admin/sessions"
  }

  devise_for :users, controller:{
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  root to: "homes#top"
  get "home/about", to: "homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

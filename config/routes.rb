Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root to: "homes#top"
  get "home/about", to: "homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

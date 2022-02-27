Rails.application.routes.draw do
  get 'activities/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#top"
  get 'search' => 'homes#search'
  resources :items
  resources :activities
end

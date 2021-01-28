Rails.application.routes.draw do
  resources :cages
  resources :dinosaurs
  resources :cage_searches
  resources :dinosaur_searches
  root to: "cages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

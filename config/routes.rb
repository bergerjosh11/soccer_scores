Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :scores
  
  get 'scores', to: 'scores#index'
  get 'scores/:league_id', to: 'scores#show', as: 'league_scores'
end

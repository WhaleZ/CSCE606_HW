Rottenpotatoes::Application.routes.draw do
  resources :movies
  root :to => redirect('/movies')
  match '/movies/:id/similar', to: 'movies#similar', as: 'similar_movie', via: :get
end
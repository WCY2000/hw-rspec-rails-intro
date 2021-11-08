Rottenpotatoes::Application.routes.draw do
    resources :movies
    # map '/' to be a redirect to '/movies'
    root :to => redirect('/movies')
#   get  'search_tmdb' , to: redirect('/search_tmdb')
    get 'search_tmdb', controller: 'movies', search_terms: 'hardware'
#     get 'search_tmdb', to: 'movies#search_tmdb', as: :search_tmdb
  end
  
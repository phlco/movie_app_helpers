MovieApp::Application.routes.draw do
  root :to => 'welcome#index'

  get '/movies' => 'movies#index'
  get '/movies/search' => 'movies#search', :as => 'search_movies'

  get '/movies/:id' => 'movies#show', :as => 'movie'
  get '/movies/search/:id' => 'movies#result', :as => 'movie_result'
  get '/actors/:id' => 'actors#show', :as => 'actor'

  post '/movies/:id/save' => 'movies#save', :as => 'save_movie'
  post '/movies/:id/rate' => 'movies#rate', :as => 'rate_movie'

end
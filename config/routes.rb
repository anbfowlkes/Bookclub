Rails.application.routes.draw do

  get '/books', to: 'books#home'

  get '/books/:id', to: 'books#show'

  delete '/books/:id', to: 'books#destroy'

  patch '/books/:id', to: 'books#update'

  post '/books', to: 'books#create'



  get '/members', to: 'members#home'

  get '/members/:id', to: 'members#show'

  delete '/members/:id', to: 'members#destroy'

  post '/members', to: 'members#create'

  patch '/members/:id', to: 'members#update'



  get '/members/favourites', to: 'member_books#home'
  # get '/members/favorites', to: 'books#home'

  get 'members/:id/favorites', to: 'member_books#show'

  post '/members/favorites', to: 'member_books#create'

  delete '/deletefavorite', to: 'member_books#getridof'

  get '/myroute', to: 'member_books#new_function'



  # Pictures:

  get '/pictures', to: 'pictures#index'



  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

end

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



  get '/members/favorites', to: 'member_books#index'

  get 'members/:id/favorites', to: 'member_books#show'

  post '/members/favorites', to: 'member_books#create'

  delete '/members/favorites', to: 'member_books#destroy'

end

Rails.application.routes.draw do

  get '/books', to: 'books#home'

  get '/books/:id', to: 'books#show'

  delete '/books/:id', to: 'books#destroy'

end

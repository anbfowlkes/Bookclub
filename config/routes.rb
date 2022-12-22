Rails.application.routes.draw do

  get '/books', to: 'books#home'

  get '/books/:id', to: 'books#show'

  delete '/books/:id', to: 'books#destroy'

  patch '/books/:id', to: 'books#update'

  post '/books', to: 'books#create'



  get '/members', to: 'members#home'

end

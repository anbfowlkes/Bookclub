Rails.application.routes.draw do

  get '/books', to: 'application#home'

  get '/books/:id', to: 'items#show'

end

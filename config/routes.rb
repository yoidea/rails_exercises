Rails.application.routes.draw do
  get 'posts/new'
  get '/posts/del/:id', to: 'posts#del'
  get '/posts/show/:id', to: 'posts#show'
  get 'posts/index'
  root to: 'home#top'  
end

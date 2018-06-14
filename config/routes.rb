Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/index'
  get 'posts/index/:id'
  root to: 'home#top'  
end

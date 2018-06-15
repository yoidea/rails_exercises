Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/del'
  get 'posts/index'
  root to: 'home#top'  
end

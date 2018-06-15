class PostsController < ApplicationController
  def new
  	@text = params[:text]
  	Post.new(text: @text).save
  end
  def index
  	@posts = Post.all
  end
end
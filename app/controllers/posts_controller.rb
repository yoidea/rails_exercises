class PostsController < ApplicationController
  def new
    @text = params[:text]
    if @text != ''
      Post.new(text: @text).save
    end
  end
  def del
    @id = params[:id]
    if @id != ''
      Post.find(@id).delete
    end
  end
  def index
    @posts = Post.all
  end
end
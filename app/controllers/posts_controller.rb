class PostsController < ApplicationController
  # メソッドの中にはコメント書かない習慣らしい
  def new
    @text = params[:text]
    if @text != ''
      Post.new(text: @text).save
      redirect_to :action => "index"
    end
  end

  def del
    @id = params[:id]
    if @id != ''
      Post.find(@id).delete
      redirect_to :action => "index"
    end
  end

  def show
  	@id = params[:id]
  	@post = Post.find(@id)
  end

  def index
    @posts = Post.all
  end
end
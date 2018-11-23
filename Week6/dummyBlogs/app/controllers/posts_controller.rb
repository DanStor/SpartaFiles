class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def new
    @post = Post.new
  end

  def create
  end

  def destroy
  end

  def update
  end
end

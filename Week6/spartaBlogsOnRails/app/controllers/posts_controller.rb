class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find params[:id]
  end

  def edit
    @post = Post.find params[:id]
  end

  def create
    @post = Post.new post_params

    respond_to do |format|
      if @post.save
        format.html{redirect_to @post, notice: "'#{@post.title}' was created"}
      else
        format.html{redner :new}
      end
    end
  end

  def update
    @post = Post.find params[:id]
    @post.update post_params
    redirect_to @post
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    # Go to index of PostsController
    redirect_to posts_path
  end

  def post_params
    # A parameter that requires information from a Post that has permission to change the title, body and author
    post_params = params.require(:post).permit(:title, :body, :author)
  end
end

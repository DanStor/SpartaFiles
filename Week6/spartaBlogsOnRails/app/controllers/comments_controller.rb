class CommentsController < ApplicationController
  before_action :set_post

  def edit
    @comment = Comment.find params[:id]
  end

  def create
    @comment = @post.comments.create(comment_params)
    @comment.save
    redirect_to @post
  end

  def update
    @comment = Comment.find params[:id]
    @comment.update comment_params
    redirect_to @post
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    redirect_to @post
  end

  def set_post
    @post = Post.find params[:post_id]
  end

  def comment_params
    # A parameter that requires information from a Post that has permission to change the title, body and author
    comment_params = params.require(:comment).permit(:title, :body, :author)
  end
end

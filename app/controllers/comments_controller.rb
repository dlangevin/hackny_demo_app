class CommentsController < ApplicationController

  before_filter :find_post

  def index
    @comments = @post.comments.order("created_at DESC")
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.post = @post
    if @comment.save
      respond_to do |format|

        format.js do
          return render(:json => @comment)
        end

        format.html do
          return redirect_to(post_comments_path(@post))
        end
      end
      
    end
  end

  protected

  def find_post
    @post = Post.find(params[:post_id])
  end

end
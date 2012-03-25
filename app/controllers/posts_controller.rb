class PostsController < ApplicationController


  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      return redirect_to(posts_path)
    end
    return render(:action => :new)
  end

end

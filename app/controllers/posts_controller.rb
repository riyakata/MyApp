class PostsController < ApplicationController

  def index
    @posts=Post.all
  end

  def show
    @post=Post.find(params[:id])
  end

  def new
    @post=Post.new
  end

  def edit
    @post=Post.find(params[:id])
  end

  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_path }

    end
  end

  def create

    @post=Post.new(params[:post])
    respond_to do |format|
      if @post.save!
        format.html { redirect_to post_path(@post) }
      end
    end
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post }
      end
    end
  end

end
class PostsController < ApplicationController
  
  def show
    @post = Post.find(params[:id])
    @topic = Topic.find(params[:topic_id])
  end

  def new
    @post = Post.new
    authorize! :create, Post, message: "You need to be a member to create a new post."
  end 

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:notice] = "Post was saved."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    authorize! :update, @post, message: "You need to own the post to edit it."
    if @post.update_attributes(params[:post])
      flash[:notice] = "Post was updated."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :edit
    end
  end

end
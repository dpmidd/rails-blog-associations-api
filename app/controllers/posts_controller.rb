class PostsController < ApplicationController

  def index
    render json: Post.all, except: [:body, :comments]
  end

  def show
    post = Post.find(params[:id])
    render json: post
  end
end

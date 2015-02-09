class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: Post.find(params[:id])
  end
end

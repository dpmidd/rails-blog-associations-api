class UsersController < ApplicationController

  def index
    render json: User.all, except: [:posts, :comments]
  end

  def show
    user = User.find(params[:id])
    render json: user
  end
end

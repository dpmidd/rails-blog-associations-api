class CommentsController < ApplicationController

  def index
    @comment = Comment.all
  end

  def show
  end
end

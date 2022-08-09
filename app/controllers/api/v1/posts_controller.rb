class Api::V1::PostsController < ApplicationController
  require 'kaminari'

  def index
    @posts = []
    if params[:page].to_i <= 1
      @posts = Post.order("created_at": :desc).page(1).per(params[:per])
    else
      @posts = Post.order("created_at": :desc).page(params[:page]).per(params[:per])
    end
    render :json => @posts
  end
end

class PostOridsController < ApplicationController

  def index
    @post_orids = Post_Orid.all
  end

  def new
    @post_orid = Post_Orid.new 
  end

  def show
    @post_orid = Post_Orid.find(params[:id])
  end
end

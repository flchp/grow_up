class OridpostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @oridposts = Oridpost.where(:is_hidden => false).order("created_at DESC")
  end

  def new
    @oridpost = Oridpost.new
  end

  def create
    @oridpost = Oridpost.new(oridpost_params)
    @oridpost.user = current_user
    if @oridpost.save
      redirect_to oridposts_path
    else
      render :new
    end
  end

  def show
    @oridpost = Oridpost.find(params[:id])
    if @oridpost.is_hidden
      flash[:warning] = "This oridpost already archived"
      redirect_to root_path
    end
  end

  def edit
    @oridpost = Oridpost.find(params[:id])
  end

  def update
    @oridpost = Oridpost.find(params[:id])
    if @oridpost.update(oridpost_params)
      redirect_to oridposts_path
    else
      render :edit
    end
  end

  def destroy
    @oridpost = Oridpost.find(params[:id])

    @oridpost.destroy
    redirect_to oridposts_path
  end

  private

  def oridpost_params
    params.require(:oridpost).permit(:title, :objective, :reflective, :interpretive, :decision, :is_hidden)
  end

end

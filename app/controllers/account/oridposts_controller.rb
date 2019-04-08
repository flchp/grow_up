class Account::OridpostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @oridposts = current_user.oridposts.order("created_at DESC")
  end
  def new
    @oridpost = Oridpost.new
  end

  def create
    @oridpost = Oridpost.new(oridpost_params)
    @oridpost.user = current_user
    if @oridpost.save
      redirect_to account_oridposts_path
    else
      render :new
    end
  end

  def show
    @oridpost = Oridpost.find(params[:id])
  end

  def edit
    @oridpost = Oridpost.find(params[:id])
  end

  def update
    @oridpost = Oridpost.find(params[:id])
    if @oridpost.update(oridpost_params)
      redirect_to account_oridposts_path
    else
      render :edit
    end
  end

  def destroy
    @oridpost = Oridpost.find(params[:id])

    @oridpost.destroy
    redirect_to account_oridposts_path
  end

  def publish
    @oridpost = Oridpost.find(params[:id])
    @oridpost.publish!
    redirect_to :back
  end

  def hide
    @oridpost = Oridpost.find(params[:id])
    @oridpost.hide!
    redirect_to :back
  end

  private

  def oridpost_params
    params.require(:oridpost).permit(:title, :objective, :reflective, :interpretive, :decision, :is_hidden)
  end
end

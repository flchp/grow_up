class Admin::OridpostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :require_is_admin

  def index
    @oridposts = Oridpost.all
  end

  def edit
    @oridpost = Oridpost.find(params[:id])
  end

  def update
    @oridpost = Oridpost.find(params[:id])
    if @oridpost.update(oridpost_params)
      redirect_to admin_oridposts_path
    else
      render :edit
    end
  end

  def destroy
    @oridpost = Oridpost.find(params[:id])

    @oridpost.destroy
    redirect_to admin_oridposts_path
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

  def display
    @oridpost = Oridpost.find(params[:id])
    @oridpost.display!
    redirect_to :back
  end

  def conceal
    @oridpost = Oridpost.find(params[:id])
    @oridpost.conceal!
    redirect_to :back
  end

  private

  def oridpost_params
    params.require(:oridpost).permit(:title, :objective, :reflective, :interpretive, :decision, :is_hidden, :is_display)
  end


  private



end

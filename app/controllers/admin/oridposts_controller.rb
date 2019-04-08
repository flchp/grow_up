class Admin::OridpostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :require_is_admin

  def index
    @oridposts = Oridpost.all
  end



  private
  


end

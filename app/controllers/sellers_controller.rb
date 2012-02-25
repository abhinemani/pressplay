class SellersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @sellers = Seller.all
  end

  def new
    @seller = Seller.new
  end

  def edit
    @seller = Seller.find params[:id]
  end

  def create
    @seller = Seller.new params[:seller]
    if @seller.save
      redirect_to sellers_path, :notice => t("views.application.successfully_created")
    else
      render :action => "new"
    end
  end

  def update
    @seller = Seller.find params[:id]
    if @seller.update_attributes params[:seller]
      redirect_to sellers_path, :notice => t("views.application.successfully_updated")
    else
      render :action => "edit"
    end
  end

  def destroy
    @seller = Seller.find params[:id]
    @seller.destroy
    redirect_to sellers_path
  end
end

class PaymentMethodsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @methods = PaymentMethod.order(:name)
  end

  def new
    @method = PaymentMethod.new
  end

  def edit
    @method = PaymentMethod.find params[:id]
  end

  def create
    @method = PaymentMethod.new params[:payment_method]
    if @method.save
      redirect_to payment_methods_path, :notice => t("views.application.successfully_created")
    else
      render :action => "new"
    end
  end

  def update
    @method = PaymentMethod.find params[:id]

    if @method.update_attributes params[:payment_method]
      redirect_to payment_methods_path, :notice => t("views.application.successfully_updated")
    else
      render :action => "edit"
    end
  end

  def destroy
    @method = PaymentMethod.find params[:id]
    @method.destroy
    redirect_to payment_methods_path
  end
end

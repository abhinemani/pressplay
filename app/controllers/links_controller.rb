class LinksController < ApplicationController
  before_filter :authenticate_user!

  has_scope :url
  has_scope :page_rank
  has_scope :placement
  has_scope :link_name
  has_scope :keyword

  def index
    @links = apply_scopes(Link).order('created_at DESC')
    @links = @links.where(:id => Link.by_seller(params[:seller])) if params[:seller].present?
    @links = @links.where(:id => Link.by_payment_method(params[:payment_method])) if params[:payment_method].present?
    @link2 = Link.new
  end

  def show
    @link = Link.find params[:id]
  end

  def new
    @link = Link.new
  end

  def edit
    @link = Link.find params[:id]
  end

  def create
    @link = Link.new params[:link]
    @link.user_id = current_user.id
    if @link.save
      Log.user_creates_link @link
      redirect_to link_path(@link), :notice => "Success!"
    else
      render :action => "new"
    end
  end

  def update
    @link = Link.find params[:id]
    if @link.update_attributes params[:link]
      redirect_to link_path(@link), :notice => t("views.application.successfully_updated")
    else
      render :action => "edit"
    end
  end

  def destroy
    @link = Link.find params[:id]
    @link.destroy
    redirect_to links_path
  end

  def check
    if params[:links].present?
      @links_to_check = params[:links].strip.split("\n").map(&:strip).compact.reject(&:blank?)
      @links = Link.all.select { |link| @links_to_check.include? link.url }.collect { |link| link.url }
    end
  end
end

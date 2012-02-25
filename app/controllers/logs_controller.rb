class LogsController < ApplicationController
  before_filter :authenticate_user!
  has_scope :user_id
  has_scope :link_id

  def index
    @logs = apply_scopes(Log).includes(:user, :link).order('created_at DESC')
    #@logs = Log.includes(:user, :link).order('created_at DESC')
  end
end

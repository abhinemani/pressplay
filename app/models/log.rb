class Log < ActiveRecord::Base
  belongs_to :user
  belongs_to :link

  scope :user_id, proc { |user_id| where(:user_id => user_id) }
  scope :link_id, proc { |link_id| where(:link_id => link_id) }

  def self.user_creates_link(link)
    description = I18n.t("log.user.create.link", :user => link.user.email, :link => link.url)
    self.create! :user_id => link.user.id, :link_id => link.id, :description => description
  end

  def self.user_creates_payment(payment)
    from = I18n.l payment.paid_at.to_date
    to = I18n.l payment.next_payment_at.to_date
    description = I18n.t("log.user.create.payment_for_link", :user => payment.user.email, :link => payment.link.url, :from => from, :to => to)
    self.create! :user_id => payment.user.id, :link_id => payment.link.id, :description => description
  end
end

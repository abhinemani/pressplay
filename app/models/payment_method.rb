class PaymentMethod < ActiveRecord::Base
  has_many :payments
  validates :name, :presence => true
end

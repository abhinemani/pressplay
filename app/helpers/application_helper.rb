module ApplicationHelper
  def to_currency(number)
    number_to_currency number, :unit => ""
  end
end

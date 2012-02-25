module PaymentsHelper
  def to_datepicker(datetime)
    datetime.to_date.to_formatted_s(:default_ru) unless datetime.blank?
  end
end

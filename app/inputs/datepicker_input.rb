class DatepickerInput
  include Formtastic::Inputs::Base

  def to_html
    input_wrapping do
      label_html <<
      builder.text_field(method, input_html_options)
      #builder.text_field(method, datepicker_options("%d.%m.%Y", object.send(method)).merge(options))
    end
  end

  def datepicker_options(format, value = nil)
    datepicker_options = {:value => value.try(:strftime, format), :input_html => {:class => 'datepicker'}}
  end
end

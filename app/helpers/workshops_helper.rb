module WorkshopsHelper
  def break_line(text)
    text.gsub(/\n/, '<br />').html_safe
  end
end

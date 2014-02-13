module ApplicationHelper
  def parse_field_name(string, number)
    string.capitalize #+ " (#{number}):"
  end
end

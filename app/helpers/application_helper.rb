module ApplicationHelper
    
  def footer_current_year(year)
    year = year.to_i

    current_year = Time.new.year
  end
end

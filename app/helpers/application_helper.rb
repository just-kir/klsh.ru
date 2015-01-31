module ApplicationHelper
	require 'date'

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Красноярская летняя школа"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def get_numending(num)
		num = num % 100
		if (num >= 11) and (num <=19)
			ending = 'дней'
		else
			i = num % 10
			case i
			when 1
				ending = 'день'
			when 2..4
				ending = 'дня'	
			else
				ending = 'дней'
			end	
		end
		return ending	
	end

	def days_left_to_klsh
		date_of_klsh = Date.new(2015, 07, 13)
		days = (date_of_klsh - Date.today).to_i
		return days
	end
  
  def buthead (name_but)
    url = request.original_url
    name = url.split('/')[3].to_s
    if name[0..name_but.length-1] == name_but
      return "active" 
    else name[0..name_but.length-1]
    end
  end

  def buthead2 (name_but)
    url = request.original_url
    name = url.split('/')[3].to_s + "/" + url.split('/')[4].to_s
    if name[0..name_but.length-1] == name_but
      return "active" 
    else name[0..name_but.length-1]
    end
  end


  def markdown(text)
    if text
      markdown = Redcarpet::Markdown.new(
        Redcarpet::Render::HTML.new
      )
      markdown.render(text).html_safe
    end
  end

  def url(link)
    if link[0, 4] == "http"
      return link
    else
      link = "http://" + link
      return link
    end  
  end      

end
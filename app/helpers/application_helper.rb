module ApplicationHelper

	def full_title(title)
		base_title = "Firs App"
		if title.empty?
			base_title 
		else
			"#{base_title} | #{title}"
		end
	end
end

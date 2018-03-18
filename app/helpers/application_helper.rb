module ApplicationHelper
	
	def status_converter(status, truthy: 'Active', falsey: 'Pending')
		if status
			truthy
		else
			falsey
		end
	end

	def time_ago time
		"#{time_ago_in_words(time)} ago"
	end

	def double_digit_number n 
		'%02d' % n
	end

	def selection_type_icon stype
		case stype
		when 1
		  "<div class='accordion-icon-holder video block'><i class='fa fa-question'></i></div>"
		when 2
		   "<div class='accordion-icon-holder links block'><i class='fa fa-link'></i></div>"
		when 3
			 "<div class='accordion-icon-holder video block'><i class='fa fa-film'></i></div>"
		else
		    "<div class='accordion-icon-holder video block'><i class='fa fa-arrow-right'></i></div>"
		end
	end

end

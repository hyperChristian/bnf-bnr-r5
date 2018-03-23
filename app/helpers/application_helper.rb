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
		  zicon = "wrench" 
		when 2
		  zicon = "link"  
		when 3
			zicon = "videocam" 
		when 4
			zicon = "attachment-alt" 
		else
		   	zicon = "chevron-left" 
		end
		"<span class='ms-icon ms-icon-circle ms-icon-xlg color-info-#{stype}'><i class='zmdi zmdi-#{zicon}'></i></span>"
	end

end

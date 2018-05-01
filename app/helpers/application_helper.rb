
require 'rss'
require 'open-uri'


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
		  zicon = "puzzle-piece" 
		when 2
		  zicon = "link"  
		when 3
			zicon = "videocam" 
		when 4
			zicon = "file-text" 
		when 9
			zicon = "attachment-alt"
		else
		   	zicon = "chevron-left" 
		end
		"<span class='ms-icon ms-icon-circle ms-icon-xlg color-info-#{stype}'><i class='zmdi zmdi-#{zicon}'></i></span>"
		#"<i class='zmdi zmdi-#{zicon}'></i>"
	end


 	def rss_news(url)
		rss_results = []
		rss = RSS::Parser.parse(open(url).read, false).items[0..3]

		rss.each do |result|
			result = { title: result.title, date: result.pubDate, link: result.link, description: result.description }
			rss_results.push(result)
		end

		return rss_results
	end

	def rss_reader(url)
		

	end

    def is_active_controller(controller_name)
        params[:controller] == controller_name ? "active" : nil
    end

    def is_active_action(action_name)
        params[:action] == action_name ? "active" : nil
    end	

end

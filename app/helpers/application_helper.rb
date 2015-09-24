module ApplicationHelper
	def format_time(time)
		begin
			time.strftime("%H:%M %p")
		rescue Exception => e
			""
		end
	end
end

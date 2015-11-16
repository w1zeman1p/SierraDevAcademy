class Timer
	def seconds=(seconds = 0)
		@seconds = seconds
		if seconds > 10
			minutes = (seconds / 60)
			@minutes = minutes
			if minutes > 10
				hours = (minutes / 60)
				@hours = hours
				@minutes = (minutes % 60)
			end
			@seconds = (seconds % 60)
		end
		return @seconds
	end

	def seconds
		if @seconds == nil
			return 0
		else
			@seconds
		end
	end

	def minutes=(minutes = 0)
		@minutes = minutes
	end

	def hours=(hours = 0)
		@hours = hours
	end

	def time_string
		if @hours == nil
			@hours = 0
		end
		if @minutes == nil
			@minutes = 0
		end
		time = []
		if @hours < 10
			@hours = "0" + @hours.to_s 
		else
			@hours = @hours.to_s 
		end
		if @minutes < 10
			@minutes = "0" + @minutes.to_s 
		else 
			@minutes = @minutes.to_s
		end
		if @seconds < 10
			@seconds = "0" + @seconds.to_s
		else
			@seconds = @seconds.to_s
		end
		time.push(@hours,':',@minutes,':',@seconds)
		time.join
	end
end
helpers do

	def login(user)
		session[:token] = user.id
		current_user
	end

	def current_user
		if session[:token] && User.find(session[:token])
			@current_user ||= User.find(session[:token])
		end
	end

	def logged_in?
		!current_user.nil?
	end

end
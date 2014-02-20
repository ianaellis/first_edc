module SessionsHelper

	def sign_in_(user)
		cookies.permanent[:remember_token] = user.remember_token
		@current_user = user
	end

	def signed_in_?
		!current_user.nil?
	end

	def current_user_=(user)
		@current_user = user
	end

	def current_user_
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	def current_user_?(user)
		user == current_user
	end

	def sign_out_
		@current_user = nil
		cookies.delete(:remember_token)
	end

	def redirect_back_or_(default)
		redirect_to(session[:return_to] || default)
		session.delete(:return_to)
	end

	def store_location_
		session[:return_to] = request.fullpath
	end

end

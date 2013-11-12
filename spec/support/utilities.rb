def full_title(page_title)
	base_title = "VetPALS Data Entry"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end

end

def sign_in(user)
	visit signin_path
	fill_in "Email", with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"

	cookies[:remember_token] = user.remember_token
end

def test_sign_up(user)
	# visit signup_path
	fill_in "Name", with: "Example User"
	fill_in "Email", with: "user@example.com"
	fill_in "Password", with: "foobar"
	fill_in "Confirmation", with: "foobar"
	# click_button "Create my account"
	# cookies[:remember_token] = user.remember_token
end
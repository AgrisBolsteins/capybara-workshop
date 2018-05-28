class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def validate_login_open
    @pages.page_login.visible?
  end

  def submit_login_form()
    user = Users.contact_form_user
    @pages.page_login.enterLogInEmail(user.email)
    @pages.page_login.enterLogInPassword(user.password)
  end

  def sign_in
    @pages.page_login.signIn
  end

  def validate_error_message
    @pages.page_login.logInErrorMessage
  end

end
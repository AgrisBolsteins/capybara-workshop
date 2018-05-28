class LogInPage < BasePage
    attr_accessor :button_signIn
    def initialize
        @login_link = Element.new(:css, '#fpw_link')
        @input_login_email = Element.new(:css, '#login input[name="login"]')
        @input_login_password = Element.new(:css, '#login input[name="password"]')
        @button_signIn = Element.new(:css, '#login .button')
        @logIn_error_message = Element.new(:xpath, '//span[contains(text(), "Username or password is not correct")]')
    end

    def visible?
        @login_link.isVisible
        @input_login_email.isVisible
        @input_login_password.isVisible
        @button_signIn.isVisible
    end

    def enterLogInEmail(email)
        @input_login_email.send_keys(email)
    end

    def enterLogInPassword(password)
        @input_login_password.send_keys(password)
    end

    def signIn
        @button_signIn.click
    end

    def logInErrorMessage
        @logIn_error_message.visible?
    end

end


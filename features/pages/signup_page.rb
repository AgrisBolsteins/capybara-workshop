class SignUpPage < BasePage
    attr_accessor :button_submit
    def initialize
        @button_submit = Element.new(:css, '#signup button[type="submit"]')
        @input_signup_email = Element.new(:css, '#signup input[name="login"]')
        @input_signup_password_1 = Element.new(:css, '#signup input[name="password1"]')
        @input_signup_password_2 = Element.new(:css, '#signup input[name="password2"]')
        @input_signup_project_name = Element.new(:css, '#signup input[name="project_name"]')
        @button_signup_close = Element.new(:css, '#signup .closecross')
    end

    def visible?
        @button_submit.isVisible
        @button_signup_close.isVisible
        @input_signup_email.isVisible
        @input_signup_password_1.isVisible
        @input_signup_password_2.isVisible
        @input_signup_project_name.isVisible
    end

    def enterSignupEmail(email)
        @input_signup_email.send_keys(email)
    end

    def enterSignupPassword(password)
        @input_signup_password_1.send_keys(password)
        @input_signup_password_2.send_keys(password)
    end

    def enterProjectName(projectName)
        @input_signup_project_name.send_keys(projectName)
    end

    def closeSignUp
        @button_signup_close.click
    end

end
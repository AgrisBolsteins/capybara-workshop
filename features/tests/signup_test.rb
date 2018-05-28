class SignupTest
    def initialize(pages)
        @pages = pages
    end

    def validate_signup_open
        @pages.page_signup.visible?
    end

    def submit_signup_form()
        user = Users.contact_form_user
        @pages.page_signup.enterSignupEmail(user.email)
        @pages.page_signup.enterSignupPassword(user.password)
        @pages.page_signup.enterProjectName(user.projectName)
    end

    def close_signup_page
        @pages.page_signup.closeSignUp
    end

    def validate_signup_close
        @pages.page_home.visible?
    end

end
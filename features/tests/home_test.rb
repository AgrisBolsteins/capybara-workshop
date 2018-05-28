class HomeTest
    def initialize(pages)
        @pages = pages
    end

    def load_home_page
        @pages.page_home.load
        @pages.page_home.visible?
    end
    
    def open_signup_page
        @pages.page_home.openSignUp
    end

    def open_login_page
        @pages.page_home.openLogIn
    end
end
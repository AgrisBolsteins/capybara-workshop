class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @button_sign_up = Element.new(:css, '#signup-b')
    @button_logIn = Element.new(:css, '#login-b')
  end

  def visible?
    @button_start.isVisible
    @button_sign_up.isVisible
    @button_logIn.isVisible
  end

  def load
    visit('/legacy')
  end

  def openSignUp
    @button_sign_up.click
  end

  def openLogIn
    @button_logIn.click
  end

end

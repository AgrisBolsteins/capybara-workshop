Given(/^I am on Apimation home page/) do
  @pages.page_home.load
  @pages.page_home.visible?
end

When(/^I click SignUp button/) do
  @pages.page_home.openSignUp
end

And(/^I check if SignUp view is visible/) do
  @pages.page_signup.visible?
end

Then("I enter {string}, {string}, {string} in SignUp field") do |email, password, projectName|
  @pages.page_signup.enterSignupEmail (email)
  @pages.page_signup.enterSignupPassword (password)
  @pages.page_signup.enterProjectName (projectName)
end

And(/^I close Signup view/) do
  @pages.page_signup.closeSignUp
end

Then(/^I validate if Signup view is closed/) do
  @pages.page_home.visible?
end

When(/^I click LogIn button/) do
  @pages.page_home.openLogIn
end

And(/^I check if LogIn view is visible/) do
  @pages.page_login.visible?
end

Then("I enter {string}, {string} in LogIn fields") do |email, password|
  @pages.page_login.enterLogInEmail (email)
  @pages.page_login.enterLogInPassword (password)
end

And(/^I try to Sign in/) do
  @pages.page_login.signIn
end

Then(/^I validate if error is visible/) do
  @pages.page_login.logInErrorMessage
end


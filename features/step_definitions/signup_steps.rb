Given(/^I am on Apimation home page/) do
  @tests.home_tests.load_home_page
end

When(/^I click SignUp button/) do
  @tests.home_tests.open_signup_page
end

And(/I check if SignUp view is visible/) do
  @tests.signup_tests.validate_signup_open
end

Then("I fill out Sign Up form") do
 @tests.signup_tests.submit_signup_form()
end

And(/I close SignUp view/) do
  @tests.signup_tests.close_signup_page
end

Then(/I validate if SignUp view is closed/) do
  @tests.signup_tests.validate_signup_close
end

When(/I click LogIn button/) do
  @tests.home_tests.open_login_page
end

And(/I check if LogIn view is visible/) do
  @tests.login_tests.validate_login_open
end

Then("I fill out Log In form") do
  @tests.login_tests.submit_login_form()
end

And(/I try to Sign in/) do
  @tests.login_tests.sign_in
end

Then(/I validate if error is visible/) do
  @tests.login_tests.validate_error_message
end






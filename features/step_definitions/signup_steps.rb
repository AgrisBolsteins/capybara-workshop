Given(/^I am on Apimation home page/) do
  visit('/legacy')
  unless find(:css, '#signup-b').visible?
    raise "Logo not visible"
  end
end

When(/^I click SignUp button/) do
  find(:css, '#signup-b').click
end

And(/^I check if SignUp view is visible/) do
  unless find(:css, '#signup button[type="submit"]').visible?
    raise "Signup view not visible"
  end
end

Then("I enter {string}, {string}, {string} in SignUp fields") do |email, password, projectName|
  find(:css, '#signup input[name="login"]').send_keys(email)
  find(:css, '#signup input[name="password1"]').send_keys(password)
  find(:css, '#signup input[name="password2"]').send_keys(password)
  find(:css, '#signup input[name="project_name"]').send_keys(projectName)
end

And(/^I close SignUp view/) do
  find(:css, '#signup .closecross').click
end

Then(/^I validate if Signup view is closed/) do
  if (find(:css, '#signup .closecross').visible?)
    raise "Signup view is not closed"
  end
end

When(/^I click LogIn button/) do
  find(:css, '#login-b').click
  unless find(:css, '#fpw_link').visible?
    raise "Link not visible"
  end
end

Then("I enter {string}, {string} in LogIn fields") do |email, password|
  find(:css, '#login input[name="login"]').send_keys(email)
  find(:css, '#login input[name="password"]').send_keys(password)
end

And(/^I try to Sign in/) do
  find(:css, '#login .button').click
  unless find(:xpath, '//span[contains(text(), "Username or password is not correct")]').visible?
    raise "Error message not visible"
  end
end

Then(/^I validate if error is visible/) do
  unless find(:xpath, '//span[contains(text(), "Username or password is not correct")]').visible?
    raise "Error message not visible"
  end
end


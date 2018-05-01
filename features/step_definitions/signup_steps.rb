Given(/^I am on Inbox home page/) do
  visit('/')
  unless find(:css, '.nav-logo__link').visible?
    raise "Logo not visible"
  end
end

When("I enter {string}, {string} in Login") do |email, password|
  find(:css, '#userName').send_keys(email)
  find(:css, '#password').send_keys(password)
end

Then(/^I click Ieiet button/) do
  unless find(:css, '#implogin__btn_sign-in').visible?
    raise "Ieiet button not visible"
  end
  find(:css, '#implogin__btn_sign-in').click
  unless find(:xpath, "//a[contains(text(), 'Nepieciešama palīdzība?')]").visible?
    raise "Alert message not visible"
  end
end

And(/^I see Alert Message/) do
  unless find(:xpath, "//a[contains(text(), 'Nepieciešama palīdzība?')]").visible?
    raise "Alert message not visible"
  end
end

Then(/^I click Inbox logo button/) do
  unless find(:css, '.nav-logo__link').visible?
    raise "Inbox logo not visible"
  end
    find(:css, '.nav-logo__link').click
  unless find(:css, '.lead').visible?
    raise "Registreties button not visible"
  end
end

And(/^I am at Inbox home page/) do
  unless find(:xpath, "//div[contains(text(), 'Pirmo reizi Inbox.lv portālā?')]")
    raise "Text not visible"
  end
end

Then(/^I open Registration page/) do
  unless find(:css, '.lead').visible?
    raise "Registration button not visible"
  end
    find(:css, '.lead').click
  unless find(:css, '#signup_submit').visible?
    raise "Title not visible"
  end
end

And("I enter {string}, {string}, {string}, {string} in Registration fields") do |username, name, lastname, password|
  find(:css, '#signup_user').send_keys(username)
  find(:css, '#signup_forename').send_keys(name)
  find(:css, '#signup_surname').send_keys(lastname)
  find(:css, '#signup_password_password').send_keys(password)
  find(:css, '#signup_password_passwordRepeat').send_keys(password)
end
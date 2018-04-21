When(/^I am on Appimation home page/) do
  visit('/')

# try now button
find(:xpath, "//section/descendant::button[contains(text(), 'Try now')]")
find(:css, "#start_button")
# sign up button
find(:xpath, "//header/descendant::button[@id='signup-b']")
find(:css, "#signup-b")
# contact us label
find(:xpath, "//h2[contains(text(), 'Contact Us')]")
find(:css, "#cta > h2")
# contact us name input
find(:xpath, "//div/descendant::input[@id='name']")
find(:css, "#name")
# contact us email input
find(:xpath, "//div/descendant::input[@id='email']")
find(:css, "#email")
# contact us message input
find(:xpath, "//textarea[@id='contactus-message']")
find(:css, "#contactus-message")
# contact us send button
find(:xpath, "//div/descendant::input[@id='contactus-button']")
find(:css, "#contactus-button")
# facebook logo
find(:xpath, "//footer/descendant::a[@class='icon fa-facebook']")
find(:css, ".icon")
# all feature sections in a list
  puts " "
  puts "Feature Sections Element list by xPath: "
all(:xpath, "//section[@class='box special features']/parent::section/descendant::div[@class='features-row']").each do |el|
  puts el
end
  puts " "
  puts "Feature Sections Element list by CSS: "
all(:css, "div.features-row").each do |el|
  puts el
end
  puts " "
# Chain requests with reusable data image
  puts "Chain requests with reusable data image by xPath: "
all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
  puts el
end
  puts " "

  puts "Chain requests with reusable data image by CSS: "
all(:css, "div.features-row:nth-child(1) > section:nth-child(1) > img:nth-child(1)").each do |el|
  puts el
end
  puts " "

end



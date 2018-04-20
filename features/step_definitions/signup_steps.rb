When(/^I am on Appimation home page/) do
  visit('/')
########## xPath elements ##########
# try now button
find(:xpath, "//section/descendant::button[contains(text(), 'Try now')]")
# sign up button
find(:xpath, "//header/descendant::button[@id='signup-b']")
# contact us label
find(:xpath, "//h2[contains(text(), 'Contact Us')]")
# contact us name input
find(:xpath, "//div/descendant::input[@id='name']")
# contact us email input
find(:xpath, "//div/descendant::input[@id='email']")
# contact us message input
find(:xpath, "//textarea[@id='contactus-message']")
# contact us send button
find(:xpath, "//div/descendant::input[@id='contactus-button']")
# facebook logo
find(:xpath, "//footer/descendant::a[@class='icon fa-facebook']")
# all feature sections in a list
  puts " "
  puts "Feature Sections Element list by xPath: "
all(:xpath, "//section[@class='box special features']/descendant::*").each do |element|
  puts element
end
  puts " "
# Chain requests with reusable data image
  puts "Chain requests with reusable data image by xPath: "
all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
  puts el
end
  puts " "
########## CSS elements ##########
# try now button
find(:css, "#start_button")
# sign up button
find(:css, "#signup-b")
# contact us label
find(:css, "#cta > h2")
# contact us name input
find(:css, "#name")
# contact us email input
find(:css, "#email")
# contact us message input
find(:css, "#contactus-message")
# contact us send button
find(:css, "#contactus-button")
# facebook logo
find(:css, ".icon")
# all feature sections in a list
  puts "Feature Sections Element list by CSS: "
all(:css, "section.box *").each do |element|
  puts element
end
  puts " "
# Chain requests with reusable data image
  puts "Chain requests with reusable data image by xPath: "
all(:css, "div.features-row:nth-child(1) > section:nth-child(1) > img:nth-child(1)").each do |element|
  puts element
end
  puts " "

end



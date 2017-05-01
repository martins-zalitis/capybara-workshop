When(/^I am on Appimation home page/) do
  visit('/')
  find(:id, 'start_button').visible?
  find(:id, 'login-b').visible?
  find(:id, 'signup-b').visible?
end

Then(/^I click Try Now/) do
  find(:id, 'start_button').click
end

Then(/^I enter (.*) in SignUp email/) do |email|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "login"]').send_keys email
end

Then(/^I enter (.*) in SignUp passwords/) do |password|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]').send_keys password
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]').send_keys password
end

Then(/^I enter (.*) in SignUp project name/) do |name|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]').send_keys name
end

Then(/^I cancel SignUp/) do
  find(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]').click
end


Then(/^I click Login/) do
  find(:id, 'login-b').click
end

Then(/^I enter (.*) in Login email/) do |email|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]').send_keys email
end

Then(/^I enter (.*) in Login password/) do |password|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]').send_keys password
end

Then(/^I click form Login/) do
  find(:xpath, '//div[@id = "login"]/descendant::button[@class = "button button-block innerButton"]').click
end

Then(/^I am logged in as email (.*)/) do |email|

  print find(:xpath, '//div[@id = "userEmail"]/child::span')
  # emailCheck find(:xpath, '//div[@id = "userEmail"]/child::span')
  #
  # print emailCheck[0]
  all(:xpath, '//div[@id = "userEmail"]/child::span').each do |el|
    puts el.text
    el.text == email
  end

end

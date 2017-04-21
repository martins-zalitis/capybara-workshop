When(/^I am on Appimation login page/) do
  visit('/')
  # all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
  #   puts el
  # end
  # all(:xpath, "//button[contains(text(), 'Try now')]").each do |el|
  #   puts el
  # end
  # print find(:xpath, "//*[@id=\"start_button\"]")
  # print find(:xpath, "//button[@id=\"login-b\"]")

## EXAMPLES

  all(:xpath, "//header/descendant::button[contains(text(), 'Login')]").each do |el|
    puts el.text
  end

  all(:xpath, "//header/descendant::button[@id='login-b']").each do |el|
    puts el.text
  end
puts ("//Exaples
 ")

## TRY now
  # all(:xpath, "//section/descendant::button[contains(text(), 'Try now')]").each do |el|
  #   puts el.text
  # end

  # all(:xpath, "//section/descendant::button[@id='start_button']").each do |el|
  #   puts el.text
  # end

  all(:xpath, "//section[@id='banner']/descendant::button[@id='start_button']").each do |el|
    puts el.text
  end

  ## Sign Up
# all(:xpath, "//header/descendant::button[contains(text(), 'Sign Up')]").each do |el|
#   puts el.text
# end

all(:xpath, "//header/descendant::button[@id='signup-b']").each do |el|
  puts el.text
end

#contact us section == print h2

all(:xpath, "//section[@id='cta']").each do |el|
  puts el.text
end

#contact us name
all(:xpath, "//section[@id='cta']/descendant::input[@id='name']").each do |el|
  puts el.text
end

#contact us email
all(:xpath, "//cta/descendant::input[@id='email']").each do |el|
  puts el.text
end

#contac us msg input
all(:xpath, "//cta/descendant::input[@id='contactus-message']").each do |el|
  puts el.text
end

#contact us send button
all(:xpath, "//cta/descendant::input[@id='contactus-button']").each do |el|
  puts el.text
end


# All feature sections in list using xpath
all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section").each do |el|
  puts el.text
end

  # all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]").each do |el|
  #               # //*[@id="main"]/section[2]/div[1]/section[1]/img

  #   print el.text
  # end
end

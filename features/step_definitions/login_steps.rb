When(/^I am on Appimation home page/) do
  @tests.signup_tests.load_home_page
end

Then(/^I submit signup details/) do
    @tests.signup_tests.open_signup_form_submit_details
end

Then(/^I see Appimation home page/) do
    @tests.signup_tests.home_page_visible?
end

When(/^I submit login details$/) do
  @tests.login_tests.open_login_form_submit_details
end

Then(/^I see Appimation main page/) do
    @tests.login_tests.main_page_visible?
end

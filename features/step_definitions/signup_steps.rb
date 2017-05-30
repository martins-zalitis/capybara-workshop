When(/^I am on Appimation home page/) do
  @tests.signup_tests.load_home_page
end

Then(/^I submit signup details/) do
    @tests.signup_tests.open_signup_form_submit_details
end

Then(/^I submit no_email details/) do
    @tests.signup_tests.open_signup_form_submit_details_no_email
end

Then(/^I submit no_password details/) do
    @tests.signup_tests.open_signup_form_submit_details_no_password
end

Then(/^I submit long_email details/) do
    @tests.signup_tests.open_signup_form_submit_details_long_email_user
end

Then(/^I submit long_project_name details/) do
    @tests.signup_tests.open_signup_form_submit_details_long_project_name_user
end

Then(/^I submit empty_login details/) do
    @tests.login_tests.open_login_form_submit_details_empty_login
end

Then(/^I submit invalid_login details/) do
    @tests.login_tests.open_login_form_submit_details_invalid_login
end

Then(/^I see Appimation home page/) do
    @tests.signup_tests.home_page_visible?
end

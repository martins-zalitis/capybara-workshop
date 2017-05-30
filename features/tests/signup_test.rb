class SignupTest
  def initialize(pages)
      @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    home_page_visible?
  end

  def open_signup_form_submit_details
      @pages.page_home.click_try_now
      @pages.page_home.submit_signup(Users.signup_user)
  end

  def open_signup_form_submit_details_no_password
      @pages.page_home.click_try_now
      @pages.page_home.submit_signup(Users.nodata_password_user)
  end

  def open_signup_form_submit_details_no_email
      @pages.page_home.click_try_now
      @pages.page_home.submit_signup(Users.nodata_email_user)
  end

  def open_signup_form_submit_details_long_email_user
      @pages.page_home.click_try_now
      @pages.page_home.submit_signup(Users.long_email_user)
  end

  def open_signup_form_submit_details_long_project_name_user
      @pages.page_home.click_try_now
      @pages.page_home.submit_signup(Users.long_project_name_user)
  end

  def home_page_visible?
    @pages.page_home.visible?
  end
end

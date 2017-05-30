class LoginTest
  def initialize(pages)
      @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    home_page_visible?
  end
# submit_login()

  def open_login_form_submit_details_empty_login
    @pages.page_home.click_login_button
    @pages.page_home.submit_login(Users.empty_login)
  end

  def open_login_form_submit_details_invalid_login
    @pages.page_home.click_login_button
    @pages.page_home.submit_login(Users.invalid_login)
  end

  def home_page_visible?
    @pages.page_home.visible?
  end
end

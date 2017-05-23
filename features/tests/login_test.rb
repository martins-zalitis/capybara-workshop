class LoginTest
  def initialize(pages)
      @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    home_page_visible?
  end

  def open_login_form_submit_details
      @pages.page_home.click_login
      @pages.page_home.submit_login("martins1@tdlbox.com", "Parole12", "Project Namemz14014")

  end

  def main_page_visible?
    @pages.main_page.visible?("martins1@tdlbox.com", "Project Namemz14014")
  end
end

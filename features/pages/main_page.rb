class MainPage < BasePage
    attr_accessor :button_start
  def initialize
    @logged_in_email = Element.new(:xpath, '//div[@id = "userEmail"]/child::span')
    @logged_in_project = Element.new(:xpath, '//div[@id = "dropdownMenu1"]/descendant::span[@class="noselect"]')
    @logged_in_test_data = Element.new(:xpath, '//div[@id = "headerTitlesDiv"]/child::div[@id="testDataTitle"]')
    @steps_requests_frame = Element.new(:xpath, '//div[@class = "slideout-menu"]/descendant::div[@id = "steps"]')
    @cases_frame = Element.new(:xpath, '//div[@class = "slideout-menu"]/descendant::div[@id = "cases"]')
    @sets_frame = Element.new(:xpath, '//div[@class = "slideout-menu"]/descendant::div[@id = "sets"]')
    @button_logout = Element.new(:id, 'logoutButton')

  end

  def visible?(email, project_name)

    # @button_start.visible?
    # @button_login.visible?
    validate_email email
    validate_project project_name

    @steps_requests_frame.visible?
    @cases_frame.visible?
    @sets_frame.visible?
    @button_logout.visible?
  end

  def validate_email(email)
    @logged_in_email == email
  end

  def validate_project(project_name)
    @logged_in_project == project_name
  end

  def load
    visit('/')
  end
end

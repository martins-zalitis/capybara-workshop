class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:id, 'start_button')
    @button_login = Element.new(:id, 'login-b')
    @button_signup = Element.new(:id, 'signup-b')
    @input_signup_email = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "login"]')
    @input_signup_password = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]')
    @input_signup_password_again = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]')
    @input_signup_project_name = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]')
    @button_signup_cancel = Element.new(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]')
    @button_signup_accept = Element.new(:xpath, '//div[@id = "signup"]/descendant::button[@class = "button-form button-block-form innerButton"]')

    @input_login_email = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]')
    @input_login_password = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]')
    @button_login_accept = Element.new(:xpath, '//div[@id = "login"]/descendant::button[@class = "button button-block innerButton"]')
  end


  def visible?
    @button_start.visible?
    @button_login.visible?
    @button_signup.visible?
  end

  def click_login_button
    @button_login.click
  end

  def enter_login_email(email)
    @input_login_email.send_keys(email)
  end

  def enter_login_password(password)
    @input_login_password.send_keys(password)
  end

  def accept_login
    @button_login_accept.click
  end

  def submit_login(user)
    enter_login_email user.email
    enter_login_password user.password
    accept_login
  end

  def click_try_now
    @button_start.click
  end

  def enter_signup_passwords(password)
    enter_signup_password(password)
    enter_signup_password_again(password)
  end

  def enter_signup_password(password)
    @input_signup_password.send_keys password
  end

  def enter_signup_password_again(password)
    @input_signup_password_again.send_keys password
  end

  def enter_signup_email(email)
    @input_signup_email.send_keys(email)
  end

  def enter_signup_project_name(name)
    @input_signup_project_name.send_keys name
  end

  def cancel_signup
    @button_signup_cancel.click
  end

  def accept_signup
    @button_signup_accept.click
  end

  def submit_signup(user)
    enter_signup_email user.email
    enter_signup_passwords user.password
    enter_signup_project_name user.project_name
    accept_signup
  end

  def load
    visit('/')
  end
end

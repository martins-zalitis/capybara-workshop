class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:id, 'start_button')
    @button_login = Element.new(:id, 'login-b')
    @button_signup = Element.new(:id, 'signup-b')

    @input_login_email = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]')
    @input_login_password = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]')
    @button_confirm_login = Element.new(:xpath, '//div[@id = "login"]/descendant::button[@class = "button button-block innerButton"]')

    @input_signup_email = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "login"]')
    @input_signup_password = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]')
    @input_signup_password_again = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]')
    @input_signup_project_name = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]')
    @button_signup_cancel = Element.new(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]')
  end

  def visible?
    @button_start.visible?
    @button_login.visible?
    @button_signup.visible?
  end

#login cases

def click_login
@button_login.click
end

def login_enter_email(email)
@input_login_email.send_keys email
end

def login_enter_password(password)
@input_login_password.send_keys password
end

def login_confirm
@button_confirm_login.click
end

def submit_login(email, password, project_name)
login_enter_email email
login_enter_password password
login_confirm
end


#singup cases

  def click_try_now
    @button_start.click
  end

  def enter_passwords(password)
    enter_password(password)
    enter_password_again(password)
  end

  def enter_password(password)
    @input_signup_password.send_keys password
  end

  def enter_password_again(password)
    @input_signup_password_again.send_keys password
  end

  def enter_signup_email(email)
    @input_signup_email.send_keys(email)
  end

  def enter_project_name(name)
    @input_signup_project_name.send_keys name
  end

  def cancel_signup
    @button_signup_cancel.click
  end

  def submit_signup(email, password, project_name)
    enter_signup_email email
    enter_passwords password
    enter_project_name project_name
    cancel_signup
  end

  def load
    visit('/')
  end
end

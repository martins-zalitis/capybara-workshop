require 'date'
module Users
  def Users.signup_user
    @signup_user ||= User.new(email: 'test@test.com', password: 'passworddemo')
    @signup_user
  end
    def Users.signup_user_without_mail
    @signup_user ||= User.new(email: '', password: 'passworddemo')
    @signup_user
  end
end

class User
  attr_reader :email, :password, :project_name
  def initialize(email:, password:)
    @email = email
    @password = password
    @project_name = 'UIauto' + DateTime.now.strftime('%Q')
  end
end


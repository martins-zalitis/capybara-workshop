require 'date'
module Users
  def Users.signup_user
    @signup_user ||= User.new(email:'emails', password:'passworde')
    # ||= if not exists create
    @signup_user
  end
end

class User
  attr_reader :email, :password, :project_name
  def initialize(email: 'default ', password: 'password')

      @email = email
      @password = password
      @project_name = 'ProjectName y' + DateTime.now.strftime('%Q')
  end

end

#User.new('emails', 'passworde', 'projent_vards')


# User.new(email:'emails', projent_name:'projent_vards', password:'passworde')

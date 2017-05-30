require 'date'
module Users
  def Users.signup_user
    #already given case
    @signup_user ||= User.new(email:'emails', password:'passworde')
    # ||= if not exists create
    @signup_user
  end

  def Users.nodata_email_user
    @nodata_password = DateTime.now.strftime('%Q')
    @nodata_email_user ||= User.new(email:'', password:@nodata_password)
    @nodata_email_user
  end

  def Users.nodata_password_user
    @nodata_password_user_email = 'mzalTDL_nopassword' + DateTime.now.strftime('%Q') + '@tdlbox.com'
    @nodata_password_user ||= User.new(email:@nodata_password_user_email, password:'')
    @nodata_password_user
  end

  def Users.long_email_user
    @long_email = 'MzalTDLemail'
    count = 0
      while count < 15
        @long_email = @long_email + DateTime.now.strftime('%Q') + DateTime.now.strftime('%Q')
        count += 1
      end
    @long_email = @long_email + '@tdlbox.com'
    #@long_email = 'MzalTDLemail' + DateTime.now.strftime('%Q') + DateTime.now.strftime('%Q') + DateTime.now.strftime('%Q') + DateTime.now.strftime('%Q') + DateTime.now.strftime('%Q') + DateTime.now.strftime('%Q') + DateTime.now.strftime('%Q') + DateTime.now.strftime('%Q') + '@tdlbox.com'
    @long_email_user ||= User.new(email:@long_email, password:'password')
    @long_email_user
  end

  def Users.long_project_name_user
    @long_project_name = 'ProjectName y' + DateTime.now.strftime('%Q') + '_Long_name_' + 'ProjectName y' + DateTime.now.strftime('%Q') + '_Long_name_'+ DateTime.now.strftime('%Q')+ DateTime.now.strftime('%Q')+ DateTime.now.strftime('%Q')+ DateTime.now.strftime('%Q')
    # puts @long_project_name
    @long_project_name_irrelevant_email = 'mzal' + DateTime.now.strftime('%Q') + '@tdlbox.com'
    @long_project_name_user ||= User.new(email:@long_project_name_irrelevant_email, password:'password', project_name:@long_project_name)
    @long_project_name_user
  end
  # empty_login
  def Users.empty_login
    @empty_user ||= User.new(email:'', password:'')
    @empty_user
  end

  def Users.invalid_login
    @invalid_email_data = 'mzal' + DateTime.now.strftime('%Q') + '@tdlbox.com'
    @invalid_login_user ||= User.new(email:@invalid_email_data, password:@invalid_email_data)
    @invalid_login_user
  end

end

class User
  attr_reader :email, :password, :project_name
  def initialize(email: 'default ', password: 'password', project_name:'')

      @email = email
      @password = password
      @project_name = project_name
      if @project_name == ''
        @project_name = 'ProjectName' + DateTime.now.strftime('%Q')
      end
  end

end

# user = Users.long_project_name_user
# puts user.project_name

#User.new('emails', 'passworde', 'projent_vards')


# User.new(email:'emails', projent_name:'projent_vards', password:'passworde')

class Tests
  def initialize(pages)
    @pages = pages
  end

  def signup_tests
    @signup_tests ||= SignupTest.new(@pages)
    @signup_tests
  end

  def login_tests
    @login_tests ||= LoginTest.new(@pages)
    @login_tests
  end
end

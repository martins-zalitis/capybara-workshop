class Pages
  def page_home
    @page_home ||= HomePage.new
    @page_home
  end

  def page_main
    @page_main ||= MainPage.new
    @page_main
  end

end

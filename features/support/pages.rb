class Pages
  def page_home
    @page_home ||= HomePage.new
    @page_home
  end

  def main_page
    @main_page ||= MainPage.new
    @main_page
  end
end

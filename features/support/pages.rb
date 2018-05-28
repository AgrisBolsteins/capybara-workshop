class Pages
  def page_home
    @page_home ||= HomePage.new
    @page_home
  end

  def page_login
    @page_login ||= LogInPage.new
    @page_login
  end

  def page_signup
    @page_signup ||= SignUpPage.new
    @page_signup
  end
  
end
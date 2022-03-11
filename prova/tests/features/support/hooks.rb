Before do |scn|
   
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    page.driver.quit
    Capybara.page.driver.browser.manage.window.maximize
end
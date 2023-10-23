class CadastroUser < SitePrism::Page
  element :addButton, '.oxd-button.oxd-button--medium.oxd-button--secondary'
  element :minimize_menu, 'button.oxd-icon-button.oxd-main-menu-button'
  element :select_user, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div'
  element :select_admin, :xpath, "//*[contains(text(), 'Admin')]"
  element :select_user_status_field, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div/div[1]'
  element :insert_password_field, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input'
  element :insert_employeer_field, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input'
  element :selec_enable, '.oxd-select-dropdown'
  element :select_employeer, '.oxd-autocomplete-dropdown'
  element :insert_user_name_field, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input'
  element :insert_confirm_password_field, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input'
  #element :search_user, :xpath, "//*[contains(text(), '#{$name}')]"
  element :table_users, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]'

 

  def registerUserAdmin
    click_on('Add')
    minimize_menu.click
    select_user.click
    select_admin.click
    select_user_status_field.click
    selec_enable.click
    insert_password_field.set "Teste@15243"
    insert_employeer_field.set "Fiona"
    sleep 4
    select_employeer.click
    $name = Faker::Name.name
    insert_user_name_field.set $name
    insert_confirm_password_field.set "Teste@15243"
    click_on('Save')
  end

  def searchUserAdmin
    find(:xpath, "//*[contains(text(), '#{$name}')]")
  end

  def deleteUserAdmin
    #page.driver.browser.navigate.refresh
    @index_user = table_users.all(:xpath, './div')
    find(:xpath, "//*[@id='app']/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div[#{@index_user.size}]/div/div[6]/div/button[1]").click
    click_on('Yes, Delete')
  end
end

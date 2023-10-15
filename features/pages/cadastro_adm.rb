class PaginaInicial < SitePrism::Page
  set_url ''
end

class Login < SitePrism::Page
  element :userField, :xpath, '//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input'
  element :passwordField, :xpath, '//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input'
  element :loginButton, :xpath, '//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button'

  def userLogin
      userField.set "Admin"
      passwordField.set "admin123"
      loginButton.click
  end
end

class PaginaLogado < SitePrism::Page
  element :class_user, "oxd-userdropdown-tab"
end

class PaginaCadastro < SitePrism::Page
  element :admButton, :xpath, '//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a'

  def painelCadastroUser
    admButton.click
  end
end

class CadastroUser < SitePrism::Page
  element :addButton, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button'
  element :select_user, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div'
  element :select_userAdmin, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[1]'

  element :select_user_statusField, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div/div[1]'
  element :insert_passwordField, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input'
  element :insert_employeerField, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input'
  element :insert_user_nameField, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input'
  element :insert_confirm_passwordField, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input'
  element :saveButton, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/button[2]'

  def cadastroUserAdmin
    addButton.click
    select_user.click
    select_userAdmin.click

    select_user_statusField.set "Disabled"
    insert_passwordField.set "Teste@15243"
    insert_employeerField.set "GOK"
    insert_user_nameField.set "Testerson Silva"
    insert_confirm_passwordField.set "Teste@15243"
    saveButton.click
  end
end

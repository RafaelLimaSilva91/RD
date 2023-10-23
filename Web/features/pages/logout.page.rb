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

class CaminhoLogout < SitePrism::Page
  element :userButton, :xpath, '//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span'
  element :userLogoutButton, :xpath,'//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[4]/a'
  def caminhoLogoutUser
    userButton.click
    userLogoutButton.click
  end
end

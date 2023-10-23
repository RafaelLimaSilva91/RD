Dado('que o usuario queira se deslogar') do
  @dashboard = PaginaInicial.new
  @dashboard.load
  @dashboard = Login.new
  @dashboard.userLogin
end

Quando('ele esta logado no site') do
  @navegacaoLogout = PaginaLogado.new
end

Entao('deve deslogar do site com sucesso') do
  @navegacaoLogout = CaminhoLogout.new
  @navegacaoLogout.caminhoLogoutUser
end

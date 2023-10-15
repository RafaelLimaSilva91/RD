Dado('que estou no dashboard') do
  @dashboard = PaginaInicial.new
  @dashboard.load
  @dashboard = Login.new
  @dashboard.userLogin
end

Quando('acesso o painel admin') do
  @admin = PaginaCadastro.new
  @admin.painelCadastroUser
end

Quando('informo dados validos do novo adm') do
  @cadastro = CadastroUser.new
  @cadastro.cadastroUserAdmin
end

Entao('adm inserido com sucesso') do
end

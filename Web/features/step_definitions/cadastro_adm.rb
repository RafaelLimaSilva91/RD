Dado('que estou no dashboard') do
  @dashboard = PaginaInicial.new
  @dashboard.load
  @dashboard = Login.new
  @dashboard.userLogin
end

Dado('que acesso o painel admin') do
  step('que estou no dashboard')
  click_on('Admin')
end

Quando('informo dados válidos do novo administrador') do
  @cadastro = CadastroUser.new
  @cadastro.registerUserAdmin
end

Entao('o administrador é inserido com sucesso') do
  page.has_content?('Success')
end

Quando('cadastro um novo admin') do
  step('informo dados válidos do novo administrador')
  step('o administrador é inserido com sucesso')
end

Quando('realizo a buscar_adm') do
  click_on('Search')
end

Entao('verifico que a busca foi realiza com sucesso') do
  @cadastro.searchUserAdmin
end

Quando('excluo o admin') do
  @cadastro.deleteUserAdmin
end

Entao('verifico que o admin foi excluido') do
  page.has_content?('Deleted')
end

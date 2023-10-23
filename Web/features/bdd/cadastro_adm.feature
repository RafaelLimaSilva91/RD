# language: pt

Funcionalidade: Cadastrar ADM com sucesso

@cadastro_adm
Cenário: Cadastrar ADM com sucesso
  Dado que acesso o painel admin
  Quando informo dados válidos do novo administrador
  Então o administrador é inserido com sucesso

@buscar_adm
Cenário: Buscar ADM casdastrado
  Dado que acesso o painel admin
  Quando cadastro um novo admin
  E realizo a buscar_adm
  Entao verifico que a busca foi realiza com sucesso

@excluir_adm
Cenário: Excluir ADM casdastrado
  Dado que acesso o painel admin
  Quando cadastro um novo admin
  E excluo o admin
  Entao verifico que o admin foi excluido

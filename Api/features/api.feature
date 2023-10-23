# language: pt

Funcionalidade: Validar funcionalidade de busca de CEP

@validar_busca_cep
Cenário: Validar busca de cep com sucesso
  Dado que acesso a api de busca do cep "03263010"
  Quando faço uma requisição GET
  Então a resposta da API deve ter um código de status 200
  E retornar o DDD "11"

@validar_logradouro
Cenário: Validar busca de cep com sucesso
  Dado que acesso a api de busca do cep "03263010"
  Quando faço uma requisição GET
  Então a resposta da API deve ter um código de status 200
  E retornar o logradouro "Rua Vitor de Queiroz Matos"

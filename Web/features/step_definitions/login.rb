Dado('que o usuario queira se logar') do
    @home = PaginaInicial.new
    @home.load
  end

  Quando('ele informar os dados validos') do
    @test = Login.new
    @test.userLogin
  end

  Entao('deve acessar o site com sucesso') do
    @acess = PaginaLogado.new
  end

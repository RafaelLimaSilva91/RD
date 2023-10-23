Dado("que acesso a api de busca do cep {string}") do |cep|
  @base_url = "https://viacep.com.br/ws/#{cep}/json"
end

Quando("faço uma requisição GET") do
  @response = HTTParty.get("#{@base_url}")
end

Quando("a resposta da API deve ter um código de status {int}") do |status_code|
  expect(@response.code).to eq(status_code)
end

Entao("retornar o DDD {string}") do |dd_number|
  response_json = JSON.parse(@response.body)
  expect(response_json["ddd"]).to eq(dd_number)
end

Entao("retornar o logradouro {string}") do |dd_number|
    response_json = JSON.parse(@response.body)
    expect(response_json["logradouro"]).to eq(dd_number)
 end

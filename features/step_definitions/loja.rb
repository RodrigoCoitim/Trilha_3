#Given utilizado em todas as features
Given("o endereco da API para manter o meu cadastro") do
  #já instanciado pela classe New_user
  #$uri_base = "http://165.227.93.41/lojinha/"
end

#_____________________________________________________________________________________

#Scenario Criar um usuario
When("realizar uma requisicao para cadastro") do
  #$response = HTTParty.post("#{$uri_base}usuario", :body => { "usuarionome": @user_name, "usuariologin": @user_login, "usuariosenha": @user_password })
  $response = @create_user.postCreateUser
end

Then("a API ira retornar os dados do cadastro de usuario respondendo com o codigo {int}") do |int|
  #expect do status code e message
  expect($response.code).to eq(201)
  puts "Response code: #{$response.code}"
  expect($response.message).to eq("Created")
  puts "Response Message: #{$response.message}"

  #imprime o corpo da request
  puts "response body #{$response.body}"
  puts @user_password
end

#_____________________________________________________________________________________

#Scenario: Realizar Login
When("realizar uma requisicao para logar") do
  $response = @already_user.postLoginUser
end

Then("a API ira retornar os dados de login juntamente ao token respondendo com o codigo {int}") do |int|
  #expect do status code e message
  expect($response.code).to eq(200)
  puts "Response code: #{$response.code}"
  expect($response.message).to eq("OK")
  puts "Response Message: #{$response.message}"

  #imprime o corpo da request
  puts "response body #{$response.body}"

  $token = $response.body
  $token = JSON.parse $token
  $token = $token["data"]
  puts "valor do token: #{$token}"
  #puts "response token: #{$response["data"],['token']}"
end

#_____________________________________________________________________________________

#Scenario: Adicionar Produto
When("realizar uma requisicao para cadastro de produtos") do
  $response = @create_product.postCreateProduct
end

Then("a API ira retornar os dados do cadastro de produtos respondendo com o codigo {int}") do |int|
  #expect do status code e message
  expect($response.code).to eq(201)
  puts "Response code: #{$response.code}"
  expect($response.message).to eq("Created")
  puts "Response Message: #{$response.message}"

  #imprime o corpo da request
  puts "response body #{$response.body}"
end

##_____________________________________________________________________________________

#Scenario: Buscar Produto
When("realizar uma requisicao para buscar um Produto") do
  $response = @search_product.getSearchProduct
end

Then("a API ira retornar os dados do produto buscado respondendo com o codigo {int}") do |int|
  #expect do status code e message
  expect($response.code).to eq(200)
  puts "Response code: #{$response.code}"
  expect($response.message).to eq("OK")
  puts "Response Message: #{$response.message}"

  #imprime o corpo da request
  puts "response body: #{$response.body}"
end

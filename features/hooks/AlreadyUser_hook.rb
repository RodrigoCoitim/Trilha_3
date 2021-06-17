Before "@login" do
  @user_login = "rodrigo.coitim777"
  @user_password = "senha123"

  @body = {
    "usuariologin": @user_login,
    "usuariosenha": @user_password,
  }.to_json

  @headers = {
    'Content-Type': "application/json",
  }

  @already_user = Loja_class.new(@body, @headers)
end

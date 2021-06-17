Before "@create_user" do
  @user_name = Faker::Name.name
  @user_login = Faker::Internet.username
  @user_password = Faker::Internet.password(min_length: 6, max_length: 14, mix_case: true)

  @body = {
    "usuarionome": @user_name,
    "usuariologin": @user_login,
    "usuariosenha": @user_password,
  }.to_json
  @headers = {
    'Content-Type': "application/json",
  }

  @create_user = Loja_class.new(@body, @headers)
end

Before "@add_product" do
  $token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQiOiIyOTUxIiwidXN1YXJpb2xvZ2luIjoicm9kcmlnby5jb2l0aW03NzciLCJ1c3Vhcmlvbm9tZSI6IlJvZHJpZ28gQXNzdW5jYW8ifQ.I2Qe1qu819RFuK24LwhypLUIX5D1nbMnuc6RzuundhM"
  @product_name = Faker::Device.model_name
  @product_value = Faker::Number.between(from: 1, to: 1000)
  @product_color = Faker::Color.color_name

  @body = {
    "produtonome": @product_name,
    "produtovalor": @product_value,
    "produtocores": @product_color,
  }.to_json

  @headers = {
    'Content-Type': "application/json",
    'token': $token,
  }

  @create_product = Loja_class.new(@body, @headers)
end

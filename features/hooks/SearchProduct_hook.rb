Before "@search_product" do
  $token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQiOiIyOTUxIiwidXN1YXJpb2xvZ2luIjoicm9kcmlnby5jb2l0aW03NzciLCJ1c3Vhcmlvbm9tZSI6IlJvZHJpZ28gQXNzdW5jYW8ifQ.I2Qe1qu819RFuK24LwhypLUIX5D1nbMnuc6RzuundhM"

  @body = {}

  @headers = {
    'token': $token,
  }

  @search_product = Loja_class.new(@body, @headers)
end

class Loja_class
  include HTTParty
  require_relative "../hooks/NewUser_hook"
  require_relative "../hooks/AddProduct_hook"
  require_relative "../hooks/AlreadyUser_hook"
  require_relative "../hooks/SearchProduct_hook"

  base_uri "http://165.227.93.41/lojinha/"

  def initialize(body, headers)
    @options = { :body => body, :headers => headers }
  end

  def postCreateUser
    self.class.post("/usuario", @options)
  end

  def postLoginUser
    self.class.post("/login", @options)
  end

  def postCreateProduct
    self.class.post("/produto", @options)
  end

  def getSearchProduct
    self.class.get("/produto", @options)
  end
end

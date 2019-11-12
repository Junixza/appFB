User.create(password: "holamundo", email: "rocked_26@hotmail.com")
5.times do |i|
  Product.create(name: "Product ##{i}", description: "A product.")
end

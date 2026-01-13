module Product 
  def Product.addproduct(name,price,quantity)
    id = rand(10000)
    product = {id:id,name:name,price:price,quantity:quantity}
    File.open("Database/product/product.txt","a") do |file|
        file.puts("#{product},")
      end
  end

  def Product.showproduct
    products = File.read("Database/product/product.txt").chop
    product = Hash.new(products)
    puts products
  end
end

Product.showproduct
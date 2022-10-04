load 'ar.rb'

# Method One
new_product = Product.new

new_product.name  = "apple pen"
new_product.description = "apple pen pen pine apple apple pen"
new_product.price  = 10;
new_product.stock_quantity = 3;

new_product.save
new_product.inspect

# Method Two
prod1 = Product.new( name: "apple pen1",
                     description: "apple pen pen pine apple apple pen",
                     price: 10,
                     stock_quantity: 3 )

prod1.save
prod1.inspect

# Method Three
prod2 = Product.create( name: "apple pen2",
                        description: "apple pen pen pine apple apple pen",
                        price: 10,
                        stock_quantity: 3 )
prod2.inspect


#missing required columns
error_product = Product.new( name: "appple boy",
                        price: 10,
                        stock_quantity: 3 )
puts error_product.save
error_product.inspect

error_product.errors.messages.each do |column, errors|
  errors.each do |error|
    puts "The #{column} property #{error}."
  end
end
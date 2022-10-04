load 'ar.rb'

product_stock_greater_than40 = Product.where('stock_quantity > 40')

product_stock_greater_than40.update_all("stock_quantity = stock_quantity + 1")



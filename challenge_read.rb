require_relative 'ar.rb'

number_of_products = Product.count
puts "There are #{number_of_products} in the products table."

name_of_products = Product.where('price > 10 AND name LIKE "c%"').order(:city).limit(5)
name_of_products.each do |c|
  puts c.name
end

low_quantity_products = Product.where('stock_quantity < 5')
puts "Total number of products with a low stock quantity is #{low_quantity_products.count}"

# 77 products
# Product table has a many to one relationship with a category.
puts number_of_products.inspect

#find name of category using product
find_product = Product.find(155)
category_using_product = find_product.category
puts "#{find_product.name} belong to category #{category_using_product.name}"

#find specific category and build a product
specific_category = Category.find(2)

new_product = specific_category.products.build( name: "aaron",
                                                description: "person is a product?? WATT",
                                                price: 10,
                                                stock_quantity: 3 )
new_product.save
puts new_product.inspect

#find specific category to locate all products
specific_category2 = Category.find(3)

specific_category2.products.each { |c2| puts c2.name }
require_relative 'ar.rb'

all_categories = Category.all
all_categories.each do |category|
  puts "\n+Category: #{category.name}\n"
  product = category.products
  product.each {|i| puts " -#{i.name}"}
end



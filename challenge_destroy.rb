load 'ar.rb'

apple_pen = Product.where(:name => 'apple pen').first

apple_pen.destroy

puts apple_pen.inspect
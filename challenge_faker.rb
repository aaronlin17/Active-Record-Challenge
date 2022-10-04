require_relative 'ar.rb'

10.times do
  obj = Category.new( name:  "#{Faker::Food.ethnic_category}")

  10.times do
    obj.products.build( name: "#{Faker::Food.ingredient}",
                        description: "#{Faker::Food.description}",
                        price: "#{Faker::Number.between(from: 1, to: 20)}",
                        stock_quantity: "#{Faker::Number.between(from: 1, to: 20)}" )
  end
  obj.save
end
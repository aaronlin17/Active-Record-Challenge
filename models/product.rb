class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  validates :name, :description, :price, :stock_quantity, presence: true
  validates :name, length: {minimum: 3}, uniqueness: true
  belongs_to :category
end
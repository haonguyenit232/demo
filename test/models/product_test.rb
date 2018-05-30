require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "Thuoc tinh khong duoc de trong" do
        product = Product.new
        assert product.invalid?
        assert product.errors[:title].any?
        assert product.errors[:description].any?
        assert product.errors[:price].any?
        assert product.errors[:image_url].any?
    end
end

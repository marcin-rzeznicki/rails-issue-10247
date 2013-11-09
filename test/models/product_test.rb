require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  #these tests will fail

  test 'can be saved to db' do
    new_product = Product.create!(name: 'test product')
    assert_not_nil Product.find(new_product.id)
  end

  test 'primary key defined' do
    assert_not_nil Product.primary_key
  end

end

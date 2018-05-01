require 'minitest/autorun'
require 'minitest/pride'
require './lib/validate'
require 'pry'

class ValidateTest < Minitest::Test

  def test_validate_exists
    validation = Validate.new

    assert_instance_of Validate, validation
  end

  def test_validate_number_exists
    validation = Validate.new

    assert_equal [], validation.container
  end
end

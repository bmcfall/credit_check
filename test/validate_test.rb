require 'minitest/autorun'
require 'minitest/pride'
require './lib/validate'
require 'pry'

class ValidateTest < Minitest::Test

  def test_validate_exists

    validation = Validate.new("5541808923795240")

    assert_instance_of Validate, validation
  end

  def test_validate_validator_exists
    validation = Validate.new("5541808923795240")

    assert_equal [], validation.validator
  end

  def test_validate_numbers
    validation = Validate.new("5541808923795240")

    assert_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5], validation.numbers
  end

  def test_double_number_in_array
    validation = Validate.new("5541808923795240")

    assert_equal [0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10], validation.double_number
  end

  def test_sum_double_digits
    skip
    validation = Validate.new("5541808923795240")
    assert_equal [0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10], validation.sum_doubled
    binding.pry
  end
end

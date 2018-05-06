require 'pry'

class Validate

  attr_reader :numbers,
              :double

  def initialize(numbers)
    @numbers = numbers.to_i.digits
  end

  def double_number
    @numbers.map.with_index do |num, index|
      if index.even?
        num
      else
        num * 2
      end
    end
  end

  def sum_doubled
    double_number.map.with_index do |num, index|
      if num > 9
        num - 9
      else
        num
      end
    end
  end

  def total
    sum_doubled.reduce(0) do |accum, n|
      accum + n
    end
  end

  def validate
    if total % 10 == 0
      "valid"
    else
      "invalid"
    end
  end
end

require 'pry'

class Validate

  attr_reader :numbers,
              :validator,
              :double

  def initialize(numbers)
    #Converting the string numbers into integers; .digits separates the string and reverses the numbers.
    @numbers = numbers.to_i.digits
    @validator = []
    @double = double
  end

  def double_number
    @double = @numbers.map.with_index do |num, index|
      if index.even?
        num
      else
        num * 2
      end
    end
    @double
  end

  # def sum_doubled
  #   @double.map.each_with_index do |num, index|
  #     if num > 9
  #       num - 9
  #     end
  #   end
  #   @double
  # end
end

    #if the doubled number is greater > 9
    #subtract 9 from the number
    #replace the previous value with the new value

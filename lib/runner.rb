require './lib/validate.rb'
require 'pry'

print "Please enter an account number. "
user_input = gets.chomp

validation = Validate.new(user_input)
puts validation.validate

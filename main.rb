# frozen_string_literal: true

require './lib'
puts 'Please enter x, y and z values one-per-line'
print 'x = '
var_x = gets.to_f
print 'y = '
var_y = gets.to_f
print 'z = '
var_z = gets.to_f
puts "a = #{function_a(var_x, var_y, var_z)}"

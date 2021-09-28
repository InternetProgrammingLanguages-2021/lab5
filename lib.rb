# frozen_string_literal: true

def function_a(var_x, var_y, var_z)
  numerator = var_y - Math.sqrt(var_x.abs)
  denominator = var_x - var_y.to_f / (var_z + var_x**2)
  Math.log (numerator.to_f / denominator).abs
end

# frozen_string_literal: true

# class containing all some math util methods
class MathUtil
  def self.function_a(var_x, var_y, var_z)
    numerator = var_y - Math.sqrt(var_x.abs)
    denominator = var_x - var_y.to_f / (var_z + var_x**2)
    Math.log (numerator.to_f / denominator).abs
  end
end

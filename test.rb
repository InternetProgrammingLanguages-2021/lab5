# frozen_string_literal: true

require 'minitest/autorun'
require './main'
# test to check math function
class TestFunctionA < Minitest::Test
  def test_zeros
    assert !MathUtil.function_a(0, 0, 0).finite?, 'Must be undefined'
  end

  def test_ones
    assert !MathUtil.function_a(1, 1, 1).finite?, 'Must be undefined'
  end

  def test_is_zero_alpha
    res = MathUtil.function_a(-1, 0, 1)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_is_zero_beta
    res = MathUtil.function_a(0, 1, 1)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_is_zero_gamma
    res = MathUtil.function_a(1, 0, 1)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_is_zero_delta
    res = MathUtil.function_a(1, 0, 0)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_is_zero_epsilon
    res = MathUtil.function_a(-1, 0, 0)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_freestyle_alpha
    res = MathUtil.function_a(5, -4, 3)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0.192741062553, 0.001, 'Must be approximately right'
  end

  def test_freestyle_beta
    res = MathUtil.function_a(-500, 28, -298)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, -4.48484479193, 0.001, 'Must be approximately right'
  end

  def test_freestyle_gamma
    res = MathUtil.function_a(-24, 24, -999)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, -0.225945201637, 0.001, 'Must be approximately right'
  end

  def test_freestyle_delta
    res = MathUtil.function_a(100, 250, -1000)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0.875746553719, 0.001, 'Must be approximately right'
  end
end

# frozen_string_literal: true

require 'minitest/autorun'
require './main'
# test to check math function
class TestFunctionA < Minitest::Test
  def test_zeros
    assert !function_a(0, 0, 0).finite?, 'Must be undefined'
  end

  def test_ones
    assert !function_a(1, 1, 1).finite?, 'Must be undefined'
  end

  def test_is_zero1
    res = function_a(-1, 0, 1)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_is_zero2
    res = function_a(0, 1, 1)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_is_zero3
    res = function_a(1, 0, 1)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_is_zero4
    res = function_a(1, 0, 0)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_is_zero5
    res = function_a(-1, 0, 0)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0, 0.001, 'Must be zero'
  end

  def test_freestyle1
    res = function_a(5, -4, 3)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0.192741062553, 0.001, 'Must be approximately right'
  end

  def test_freestyle2
    res = function_a(-500, 28, -298)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, -4.48484479193, 0.001, 'Must be approximately right'
  end

  def test_freestyle3
    res = function_a(-24, 24, -999)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, -0.225945201637, 0.001, 'Must be approximately right'
  end

  def test_freestyle4
    res = function_a(100, 250, -1000)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 0.875746553719, 0.001, 'Must be approximately right'
  end
end

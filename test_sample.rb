require 'minitest/autorun'

class TestSample < Minitest::Test
  def test_hoge
    assert_equal 'Hello', 'Hello'
  end
end

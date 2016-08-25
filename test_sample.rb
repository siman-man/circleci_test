require 'minitest/autorun'
require 'rugged'

class TestSample < Minitest::Test
  def test_hoge
    assert_equal 'Hello', 'Hello'
  end

  def test_clone
    url = 'ssh://github.com/siman-man/ruby-sandbox.git'
    path = File.join(Dir.pwd, 'repos/sandbox')
    Rugged::Repository.clone_at(url, path) unless Dir.exist?(path)

    assert Dir.exist?(path)
  end
end

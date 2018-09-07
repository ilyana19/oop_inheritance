require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def setup
    @traveller = Multilinguist.new
  end

  def test_language_in
    assert_equal(@traveller.language_in('Canada'), 'en')
    assert_equal(@traveller.language_in('Japan'), 'ja')
    assert_equal(@traveller.language_in('France'), 'fr')
    assert_equal(@traveller.language_in('Italy'), 'it')
  end
end
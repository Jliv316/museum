require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/museum'
require 'pry'

#iteration 0
# Tests for main CompleteMe class
class MuseumTest < MiniTest::Test

  def test_it_exists
    assert_instance_of Museum, Museum.new(name)
  end

  def test_musem_can_take_a_name
    dmns = Museum.new("Denver Museum of Nature and Science")

    expected = "Denver Museum of Nature and Science"
    actual = dmns.name

    assert_equal expected, actual
  end

  def test_museum_defaults_no_exhibits
    dmns = Museum.new("Denver Museum of Nature and Science")

    expected = []
    actual = dmns.exhibits

    assert_equal expected, actual
  end

  def test_it_can_add_exhibits
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    dmns.add_exhibit("Gems and Minerals", 0)

    expected = [["Dead Sea Scrolls", 10], ["Gems and Minerals",0]]
    actual = dmns.exhibits

    assert_equal expected, actual
  end
  
end


require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/museum'
require_relative '../lib/patron'
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

    expected = {}
    actual = dmns.exhibits

    assert_equal expected, actual
  end

  def test_it_can_add_exhibits
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    dmns.add_exhibit("Gems and Minerals", 0)

    expected = {"Dead Sea Scrolls" => 10, "Gems and Minerals" => 0}
    actual = dmns.exhibits

    assert_equal expected, actual
  end

  def test_it_can_generate_revenue
    bob = Patron.new("Bob")
    bob.add_interests("Gems and Minerals")
    bob.add_interests("Dead Sea Scrolls")
    bob.add_interests("Imax")

    sally = Patron.new("Sally")
    sally.add_interests("Dead Sea Scrolls")

    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.admit(bob)
    dmns.admit(sally)
    
    actual = dmns.revenue
    expected = 40

    assert_equal expected, actual
  end

  def test_patrons_of_exhibit
    bob = Patron.new("Bob")
    bob.add_interests("Gems and Minerals")
    bob.add_interests("Dead Sea Scrolls")
    bob.add_interests("Imax")

    sally = Patron.new("Sally")
    sally.add_interests("Dead Sea Scrolls")
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.patrons(sally)
    dmns.patrons(bob)

    expected = dmns.patrons_of("Dead Sea Scrolls")
    actual = ["bob, sally"]
    binding.pry
    assert_equal = expected, actual
  end
end


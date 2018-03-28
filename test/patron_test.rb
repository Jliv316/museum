require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/patron'
require 'pry'

#iteration 0
# Tests for main CompleteMe class
class PatronTest < MiniTest::Test

  def setup
    @patron = Patron.new(name)
  end

  def test_it_exists
    assert_instance_of Patron, @patron
  end

  def test_patron_can_take_a_name
    bob = Patron.new("Bob")

    expected = "Bob"
    actual = bob.name

    assert_equal expected, actual
  end

  def test_patron_default_no_interests
    bob = Patron.new("Bob")

    expected = []
    actual = bob.interests

    assert_equal expected, actual
  end

  def test_it_can_add_interests
    bob = Patron.new("Bob")
    bob.add_interests("Dead Sea Scrolls")
    bob.add_interests("Gems and Minerals")

    expected = ["Dead Sea Scrolls", "Gems and Minerals"]
    actual = bob.interests

    assert_equal expected, actual
  end


end
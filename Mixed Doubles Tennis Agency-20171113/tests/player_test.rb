require 'test/unit'
require_relative '../player'
class TennisTest < Test::Unit::TestCase

  def setup
    @my_player = Player.new(:abdul, 50, 10)
  end

  def test_to_s
    assert_equal("abdul, proficiency: 50, seeks proficiency >=10 \n", @my_player.to_s, 'wrong output')
  end
end
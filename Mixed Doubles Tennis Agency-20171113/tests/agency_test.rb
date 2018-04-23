  require 'test/unit'
  require_relative '../team'
  require_relative '../agency'
  class TennisTest < Test::Unit::TestCase


    def setup
      @agency= Agency.new
      @agency.add_woman(Player.new("Abdul",4,3))
      @agency.add_man(Player.new("Carla",5,6))
      @agency.add_woman(Player.new("Jono",7,9))
      @agency.add_man(Player.new("Magda",10,8))
      @agency.add_woman(Player.new("Paddy",10,4))
      @agency.add_man(Player.new("Leyla",2,1))

    end

    def test_each_player
      @agency.each_player {|x| assert_equal(true,x.pro>=9)}

    end

    def test_team_creation
      @agency.create_teams
      assert_equal("(Paddy, Magda) Satisfaction:0.0 \n(Jono, Carla) Satisfaction:-2.0 \n(Abdul, Leyla) Satisfaction:-0.5 \nFitness of the team:-2.5", @agency.team_to_s, 'failed')
    end
#also test the opt template
    def test_steep_ascent
      @agency.create_teams
      @agency.steepest_ascent
      assert_equal("(Paddy, Carla) Satisfaction:0.0 \n(Jono, Magda) Satisfaction:-0.5 \n(Abdul, Leyla) Satisfaction:-0.5 \nFitness of the team:-1.0", @agency.to_s, 'failed')

    end
  end
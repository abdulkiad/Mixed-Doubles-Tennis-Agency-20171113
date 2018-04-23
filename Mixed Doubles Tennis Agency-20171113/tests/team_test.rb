  require 'test/unit'
  require_relative '../agency'
  require_relative '../team'
  class TennisTest < Test::Unit::TestCase

    def setup
      @agency= Agency.new
      @agency.add_woman(Player.new("Abdul",4,3))
      @agency.add_man(Player.new("Carla",5,6))
      @agency.create_teams
    end


    def test_team_satisfaction
      team= Team.new(Player.new("Abdul",4,3),Player.new("Carla",5,6))
      assert_equal(-1.0, team.satisfaction,'fail')
    end


    def test_to_s
      assert_equal("(Abdul, Carla) Satisfaction:-1.0 \nFitness of the team:-1.0", @agency.to_s,'fail')
    end

  end
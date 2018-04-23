  require_relative 'player.rb'
  class Team
  attr_accessor :male
    def initialize(female, male)
     @male= male
     @female=female
    end

    def satisfaction

      woman =0.0
      man =0.0

      if (@male.pro< @female.min_pro )
        man =(@male.pro-@female.min_pro).to_f
      end
      if (@female.pro< @male.min_pro)
        woman= (@female.pro-@male.min_pro ).to_f
      end

  total_satisfaction =(man+woman)/2.0
        return total_satisfaction
      end


    def to_s
      "(#{@female.name}, #{@male.name}) Satisfaction:#{satisfaction.to_f} \n"
    end


  end
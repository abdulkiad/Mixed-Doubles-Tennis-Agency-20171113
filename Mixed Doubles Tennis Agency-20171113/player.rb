 class Player
    attr_reader :name, :min_pro, :pro

    def initialize(name, pro, min_pro)
    @name, @pro, @min_pro =name, pro, min_pro
      @assigned_partner=false
    end
    def assigned
      @assigned_partner=true
    end
    def check_if_assigned
      @assigned_partner
    end
    def to_s
      "#{@name}, proficiency: #{@pro}, seeks proficiency >=#{@min_pro} \n"
    end


  end
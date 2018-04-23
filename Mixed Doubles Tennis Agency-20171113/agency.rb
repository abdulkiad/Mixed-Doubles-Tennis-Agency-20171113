  require_relative 'team.rb'
  require_relative 'template.rb'
  class Agency< Template

    def initialize
      @women=[]
      @men=[]
      @teams=[]
    end

    def add_woman(player)
      @women.push(player)
    end

    def add_man(player)
      @men.push(player)
    end

    def sort_by_pro
       @men.sort!{|t1, t2| t2.pro <=> t1.pro}
       @women.sort!{|t1, t2| t2.pro <=> t1.pro}
    end

    def each_player
        current_index = 0
        while current_index< @women.size
          if @women[current_index].pro >=9
          yield @women[current_index]
          end
          if @men[current_index].pro>=9
            yield @men[current_index]
          end
          current_index += 1
      end
    end

    def create_teams
      sort_by_pro
      @women.each do |woman|
      @men.each do |man|

         if ( !man.check_if_assigned and  !woman.check_if_assigned)
          @teams.push(Team.new(woman,man  ))
           man.assigned
          woman.assigned
       end
       end

      end
      end

    def general_fitness(team)
      fitness=0
      team.each do |team|
        fitness += team.satisfaction.to_f
      end
      return fitness
    end

    def swap(i,j,team)
      team[i].male, team[j].male  = team[j].male, team[i].male
    end

    def steepest_ascent
      opt(@teams)
    end

    def to_s
      str = ''
    @teams.each do |p|
        str += p.to_s
    end
      str+= "Fitness of the team:" +general_fitness(@teams).to_s

      return str


    end
    def team_to_s
      str = ''
     @teams.each do |p|
        str += p.to_s
     end
      str+= "Fitness of the team:" +general_fitness(@teams).to_s

      return str

    end



    end


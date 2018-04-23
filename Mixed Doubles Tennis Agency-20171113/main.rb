    require_relative 'player.rb'
    require_relative 'agency.rb'
    class Main


      agency= Agency.new

      begin
        IO.foreach('men.txt') do |line|
          data = line.split
          name= data[0]
          proficiency=data[1].to_i
          min_pro= data[2].to_i
          agency.add_man(Player.new(name,proficiency, min_pro))
        end
      end

      begin
        IO.foreach('women.txt') do |line|
          data = line.split
          name= data[0]
          proficiency=data[1].to_i
          min_pro= data[2].to_i
          agency.add_woman(Player.new(name,proficiency, min_pro))
         end
      end
      agency.create_teams
      puts "Most Proficient team\n" ,agency.team_to_s
      agency.each_player {|x| puts "\nMost Efficient player: ", x, "\n"}
      agency.steepest_ascent
    puts "Improved fitness teams:\n", agency.to_s
    end
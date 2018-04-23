class Template
  def  opt(teams)
    i=0
    j=0
    old_fitness = general_fitness(teams)

    while(i < teams.size)

      while(j <  teams.size)
        temp=teams
        swap(i,j,temp)
        new_fitness=general_fitness(temp)
        if old_fitness <new_fitness
          old_fitness = new_fitness
          teams=temp
        else
          #swapback
          swap(i,j,temp)
        end
        j+=1
      end
      j=0
      i+=1

    end

  end

end
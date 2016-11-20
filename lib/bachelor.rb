def get_first_name_of_season_winner(data, season)

       data[season].each do |contestant|
             contestant.each do |key, value|
               if value == "Winner"
                return contestant["name"].split(" ")[0]
               end
             end
           end
         end


def get_contestant_name(data, occupation)
   data.each do |seasons, stats|
      stats.each do |contestant|
         contestant.each do |key, value|
           if value == occupation
            return contestant["name"]
           end
         end
       end
     end
    end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasons, stats|
     stats.each do |contestant|
        contestant.each do |key, value|
          if value == hometown
           count += 1
          end
        end
      end
    end
   count
end

def get_occupation(data, hometown)
  data.each do |seasons, stats|
     stats.each do |contestant|
        contestant.each do |key, value|
          if value == hometown
           return contestant["occupation"]
          end
        end
      end
    end
end

def get_average_age_for_season(data, season)
  count = 0
  age_sum = 0


  data[season].each do |contestant|
    contestant.each do |key, value|
      count += 1
      age_sum += contestant["age"].to_f
      end
    end
  (age_sum/count).round
end

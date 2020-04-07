def game_hash
{:home => {
   :team_name => 'Brooklyn Nets',
   :colors => ['black', 'white'],
   :players => [
     {player_name: 'Alan Anderson', number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
     {player_name: 'Reggie Evans', number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
     {player_name: 'Brook Lopez', number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
     {player_name: 'Mason Plumlee', number: 1, shoe: 19, points: 26, rebounds: 11, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
     {player_name: 'Jason Terry', number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
     ]
     },

     :away => {

     :team_name => 'Charlotte Hornets',
     :colors => ['turquoise', 'purple'],
     :players => [
       {player_name: 'Jeff Adrien', number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
       {player_name: 'Bismack Biyombo', number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 22, blocks: 15, slam_dunks: 10},
       {player_name: 'DeSagna Diop', number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
       {player_name: 'Ben Gordon', number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
       {player_name: 'Kemba Walker', number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 7, blocks: 5, slam_dunks: 12}
       ]

     }
  }

end

def all_players
  all_players = game_hash.dig(:home, :players)
all_players += game_hash.dig(:away, :players)

end

def num_points_scored(player_search)
   all_players.each do |player|
     player.select{|player_name, name|
       if name == player_search
        player.select{|key, value|
          if key.to_s == 'points'
            return value
          end
         }
      end
    }
     end

end

def shoe_size(player_search)
   all_players.each do |player|
     player.select{|player_name, name|
       if name == player_search
        player.select{|key, value|
          if key.to_s == 'shoe'
            return value
          end
         }
      end
    }
 end

end

def team_colors(team_search)
  home_team = game_hash.dig(:home, :team_name)
  away_team =  game_hash.dig(:away, :team_name)

  if team_search == home_team
      colors = game_hash.dig(:home, :colors).map {|c| c.capitalize }
  elsif team_search == away_team
    game_hash.dig(:away, :colors).map {|c| c.capitalize }
    end

end

def team_names
  teams  = []
    teams << game_hash.dig(:home, :team_name)
    teams <<game_hash.dig(:away, :team_name)

p teams
end

def player_numbers(input)
  new_array =[]

  if input == game_hash.dig(:home, :team_name)
   game_hash.dig(:home, :players).each do |player|
       player.select{|key, value|
           if key == :number
           new_array << value
           end
         }
      end
        elsif input == game_hash.dig(:away, :team_name)
        game_hash.dig(:away, :players).each do |player|
          player.select{|key, value|
            if key == :number
            new_array << value
            end
            }
         end
      end

  p new_array
end

def player_stats(player_search)
result ={}

all_players.each do |player|
  player.select{|player_name, name|
    if name == player_search
     result = player.reject{|key, value|
        key.to_s == 'player_name'
      }
       end
      }
   end

 p result
end
#
def big_shoe_rebounds
  new_array = []
all_players.each do |player|
        player.select{|key, value|
          if key.to_s == 'shoe'
            new_array << value
          end
        }
      end
  max = new_array.max

  all_players.each do |player|
       player.select{|key, value|
         if value == max && key == :shoe
          player.select{|key, value|
            if key == :rebounds
              return value
            end
          }
         end
        }
     end
end

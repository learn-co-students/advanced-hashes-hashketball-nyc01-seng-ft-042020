require 'pry'


def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {:player_name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        {:player_name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        {:player_name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
       {:player_name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        {:player_name => "Jason Terry",
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {:player_name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        {:player_name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        },
       {:player_name =>"DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        {:player_name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
      
        {:player_name => "Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
        }
      ]
  }
  }
end
  

  def num_points_scored(game)
          game_hash.each do |home, points|
            points[:players].each do |players|
             return players[:points]if players[:player_name]==game
          end
       end
    end
                  

def shoe_size(game1)
     game_hash.each do |away, kicks|
        kicks[:players].each do |player|
          return player[:shoe]if player[:player_name]==game1
          end
       end
    end
                    
                    
def team_colors(team)
        if team =="Brooklyn Nets"
              return game_hash[:home][:colors]
               else 
            return game_hash[:away][:colors]
         end
      end


def team_names
      game_hash.map  do |info,array|
        array[:team_name]
        end
      end

  
def player_numbers(game)
  game_hash.each do |info, map2|
      if map2[:team_name] == game
        return map2[:players].map do |player| 
           player[:number] 
     end
    end
  end
 end


def player_stats(game)
  ####get the player stats 
   game_hash.each do |home, points| ##digging into first hash
          points.each do |away, array|
               if away == :players
                   array.each do |player|
                   if game == player[:player_name]
                 player.delete(:player_name)
                       return player     
                       end
    end
     end
      end
   end
  end
def big_shoe_rebounds
  shoe = 0
  rebounds = ""
  game_hash.collect do |game,nba|
    nba[:players].collect do |player|
      if player[:shoe] >= shoe
        rebounds = player[:rebounds]
        shoe = player[:shoe]
    
 end
 end
 end
rebounds
 end






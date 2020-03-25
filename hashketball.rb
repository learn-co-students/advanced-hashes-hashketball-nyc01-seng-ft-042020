# Write your code here!
require "yaml"
require "pp"

def game_hash
  YAML.load_file("data.yml")
end

def num_points_scored(name)
  index = 0
  while index < game_hash.length do
    info = game_hash.keys[index]
    player = game_hash[info][:players]
    
    player.each do |item|
      return item ["points"] if item["player_name"] == name
    end
      
    index += 1
  end
end


def shoe_size(name)
  
  game_hash.each_value do |team|
    
    team[:players].each do |player|
      return player["shoe"] if player["player_name"] == name
    end
      
  end
  
end

def team_colors(name)
  
  game_hash.each do |key, value|
    return value[:colors] if value[:team_name] == name
  end

end

def team_names
  teams = []
  game_hash.each_value do |value|
    teams << value[:team_name]
  end
  teams
end

def player_numbers(name)
  numbers = []
    
  game_hash.each_value do |value|
    if value[:team_name] == name
      
      value[:players].each do |item|
        numbers << item["number"]
      end
      
    end
  end
  
  numbers.sort
end

def player_stats(name)
  
  game_hash.each_value do |team|
    
    team[:players].each do |player|
      
      if player["player_name"] == name
        copy = player.transform_keys(&:to_sym)
        copy.delete(:player_name)
        return copy
      end
      
    end
    
  end
  
end

def big_shoe_rebounds
  # * First, find the player with the largest shoe size
  name = ""
  max = 0
  
  game_hash.each_value do |team|
    
    team[:players].each do |player|
      
      if player["shoe"]  > max
        name = player["player_name"] 
        max = player["shoe"]
      end
      
    end
    
  end
  # * Then, return that player's number of rebounds
    game_hash.each_value do |team|
    
    team[:players].each do |player|
      return player["rebounds"] if player["player_name"] == name
    end
      
  end
  
  # * Remember to think about return values here.
  
end

def most_points_scored
  name = ""
  max = 0
  
  game_hash.each_value do |team|
    
    team[:players].each do |player|
      
      if player["points"]  > max
        name = player["player_name"] 
        max = player["points"]
      end
      
    end
    
  end
  name
end

def winning_team
  team_name = ""
  max = 0
  
  game_hash.each_value do |team|
    
    total = team[:players].reduce(0) { |total, point| total + point["points"] } 
    
    if total > max
      max = total
      team_name = team[:team_name]
    end
    
  end

  team_name
end

def player_with_longest_name
  longest_name = ""
  
  game_hash.each_value do |team|
    
    player = team[:players].max do |a,b|
      a["player_name"].length <=> b["player_name"].length
    end
    
    name = player["player_name"]
    
    if name.length > longest_name.length
      longest_name = name
    end
    
  end
  
  longest_name
end

def long_name_steals_a_ton?
  name = ""
  max = 0
  
  game_hash.each_value do |team|
    
    team[:players].each do |player|
      
      if player["steals"]  > max
        name = player["player_name"] 
        max = player["steals"]
      end
      
    end
    
  end
  
  player_with_longest_name == name
end


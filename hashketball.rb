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





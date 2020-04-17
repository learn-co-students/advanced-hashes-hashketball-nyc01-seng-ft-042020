# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player)
  player_score = 0
  game_hash.each do |location, info|
    info[:players].each do |element|
      if element[:player_name] == player
        player_score = element[:points]
      end
    end
  end
  player_score
end

def shoe_size(player)
  player_shoe_size = 0
  game_hash.each do |location, info|
    info[:players].each do |element|
      if element[:player_name] == player
        player_shoe_size = element[:shoe]
      end
    end
  end
  player_shoe_size
end

def team_colors(team)
  colors = []
  game_hash.each do |location, info|
    if info[:team_name] == team
      info[:colors].each do |color|
        colors << color
      end
    end
  end
  colors
end

def team_names
  teams = []
  game_hash.each do |location, info|
    teams << info[:team_name]
  end
  teams
end

def player_numbers(team)
  jersey_numbers = []
  game_hash.each do |location, info|
    if info[:team_name] == team
      info[:players].each do |value|
        jersey_numbers << value[:number]
      end
    end
  end
  jersey_numbers
end

def player_stats(name)
  stats = {}
  game_hash.each do |location, info|
    info[:players].each do |element|
      if element[:player_name] == name
        stats = element
      end
    end
  end
  stats
end


def big_shoe_rebounds
  shoe_size = 0 
  rebounds = 0.0
  game_hash.each do |location, info|
    info[:players].each do |element|
      if element[:shoe] > shoe_size
         shoe_size = element[:shoe]
          rebounds = element[:rebounds]
      end
    end
  end
  rebounds
end

def most_points_scored
  points = 0 
  player = ""
  game_hash.each do |location, info|
    info[:players].each do |element|
      if element[:points] > points
         points = element[:points]
          player = element[:player_name]
      end
    end
  end
  player
end

def winning_team
  points = 0 
  team = ""
  game_hash.each do |location, info|
    info[:players].each do |element|
      if element[:points] > points
         points = element[:points]
         team = info[:team_name]
      end
    end
  end
  team
end

def player_with_longest_name
  name_length = 0
  player = ""
  game_hash.each do |location, info|
    info[:players].each do |element|
      if element[:player_name].length > name_length
        name_length = element[:player_name].length
        player = info[:player_name]
      end
    end
  end
  player
end

def long_name_steals_a_ton?
  bool = false
  steals = 0
  game_hash.each do |location, info|
    info[:players].each do |element|
      if element[:steals] > steals
         steals = element[:steals]
         if player_with_longest_name == steals
           bool = true
         end
      end
    end
  end
  bool
end
  

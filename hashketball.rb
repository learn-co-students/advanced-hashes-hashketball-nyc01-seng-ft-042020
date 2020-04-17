# Write your code below game_hash
require 'pry'
require './hashketball.rb'
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

# Write code here
def num_points_scored(player_name)
  hashketball = game_hash
  counter = 0
  while counter < 5 do
    if hashketball[:home][:players][counter][:player_name] == player_name
      return hashketball[:home][:players][counter][:points]
    end
    if hashketball[:away][:players][counter][:player_name] == player_name
      return hashketball[:away][:players][counter][:points]
    end
    counter += 1
  end
end

def shoe_size(player_name)
  hashketball = game_hash
  counter = 0
  while counter < 5 do
    if hashketball[:home][:players][counter][:player_name] == player_name
      return hashketball[:home][:players][counter][:shoe]
    end
    if hashketball[:away][:players][counter][:player_name] == player_name
      return hashketball[:away][:players][counter][:shoe]
    end
    counter += 1
  end
end

def team_colors(team_name)
  hashketball = game_hash
    if hashketball[:home][:team_name] == team_name
      return hashketball[:home][:colors]
    end
    if hashketball[:away][:team_name] == team_name
      return hashketball[:away][:colors]
    end
end


def team_names
  hashketball = game_hash
  [hashketball[:home][:team_name], hashketball[:away][:team_name]]
end

def player_numbers(team_name)
  hashketball = game_hash
  output = []
  if team_name == hashketball[:home][:team_name]
    hashketball[:home][:players].each do |player_stat|
      output << player_stat[:number]
    end
  end
  if team_name == hashketball[:away][:team_name]
    hashketball[:away][:players].each do |player_stat|
      output << player_stat[:number]
    end
  end
  output
end

def player_stats(player_name)
  hashketball = game_hash
  counter = 0
  while counter < 5 do
    if hashketball[:home][:players][counter][:player_name] == player_name
      return hashketball[:home][:players][counter]
    end
    if hashketball[:away][:players][counter][:player_name] == player_name
      return hashketball[:away][:players][counter]
    end
    counter += 1
  end
end

def big_shoe_rebounds
  hashketball = game_hash
  biggest_shoe_size = hashketball[:home][:players][0][:shoe]
  counter = 0
  while counter < 5 do
    if hashketball[:home][:players][counter][:shoe] > biggest_shoe_size
      biggest_shoe_size = hashketball[:home][:players][counter][:shoe]
    end
    counter += 1
  end

  counter = 0
  while counter < 5 do
    if hashketball[:away][:players][counter][:shoe] > biggest_shoe_size
      biggest_shoe_size = hashketball[:home][:players][counter][:shoe]
    end
    counter += 1
  end

  counter_2 = 0
  while counter_2 < 5 do
    if hashketball[:home][:players][counter_2][:shoe] == biggest_shoe_size
      return hashketball[:home][:players][counter_2][:rebounds]
    end
    if hashketball[:away][:players][counter_2][:shoe] == biggest_shoe_size
      return hashketball[:away][:players][counter_2][:rebounds]
    end
    counter_2 += 1
  end
end

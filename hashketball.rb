# Write your code below game_hash
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


def shoe_size(name)
  #set up variable to track answer
  ans = 0
  #iterate through outer hash
game_hash.each do |k,v|
  #iterate through nested hash
v.each do |k1, v1|
  #iterate through players
v[:players].each do | k1|
  #if player_name is equal to name passed, set "ans" to the value assoaicted w the :shoe key.
  if k1[:player_name] == name
ans += k1[:shoe]
#return the answr.
   return ans
end
end
end
end
end

def num_points_scored(name)
  ans = 0
game_hash.each do |k,v|

v.each do |k1, v1|
v[:players].each do | k1|
  if k1[:player_name] == name
ans += k1[:points]
   return ans
end
end
end
end
end

def team_colors(name)
game_hash.each do |k,v|
if v[:team_name] == name
return v[:colors]
end
end
end

def team_names
name_arr = []
game_hash.each do |k,v|
name_arr.push(v[:team_name] )
end
name_arr
end


def player_numbers(team)
jersey_num = []
game_hash.each do |k,v|
if v[:team_name] == team
v[:players].each do | element|
  jersey_num.push(element[:number])
end
end
end
jersey_num
end

def player_stats(name)
 stats = []
game_hash.each do |k,v|
v.each do |k1, v1|
v[:players].each do | k1|
  if k1[:player_name] == name
    return k1
# stats.push(":player_name=>#{k1[:player_name]}, :number => #{k1[:number]},
# k1[:shoe], k1[:points], k1[:rebounds],k1[:assists],k1[:steals],k1[:blocks], k1[:slam_dunks]")
#    return stats
end
end
end
end
end


def big_shoe_rebounds
  #set up variables to track shoe size and rebound
 big_shoe = 0
 rebound = 0
 #iterate through the hash
game_hash.each do |k,v|
  #iterate through the nested hash
v.each do |k1, v1|
  #iterate through the players array
v[:players].each do | k1|
  #if their shoe size is larger than big_shoe, reset the variable.
  #set rebounds to the varible in the same hash as larget shoe
  if k1[:shoe] > big_shoe
    big_shoe = k1[:shoe]
    rebound = k1[:rebounds]
end
end
end
end
#return rebound number
rebound
end

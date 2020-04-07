def game_hash
  game_hash= {
    home:
    {team_name:"Brooklyn Nets",colors: ["Black","White"], players: [
      {player_name:"Alan Anderson",number:0,shoe:16,points:22,rebounds:12,assists:12,steals:3,blocks:1,slam_dunks:1},
      {player_name:"Reggie Evans",number:30,shoe:14,points:12,rebounds:12,assists:12,steals:12,blocks:12,slam_dunks:7},
      {player_name:"Brook Lopez",number:11,shoe:17,points:17,rebounds:19,assists:10,steals:3,blocks:1,slam_dunks:15},
      {player_name:"Mason Plumlee",number:1,shoe:19,points:26,rebounds:11,assists:6,steals:3,blocks:8,slam_dunks:5},
      {player_name:"Jason Terry",number:31,shoe:15,points:19,rebounds:2,assists:2,steals:4,blocks:11,slam_dunks:1}]},
      away:
      {team_name:"Charlotte Hornets",colors: ["Turquoise","Purple"], players: [
        {player_name:"Jeff Adrien",number:4,shoe:18,points:10,rebounds:1,assists:1,steals:2,blocks:7,slam_dunks:2},
        {player_name:"Bismack Biyombo",number:0,shoe:16,points:12,rebounds:4,assists:7,steals:22,blocks:15,slam_dunks:10},
        {player_name:"DeSagna Diop",number:2,shoe:14,points:24,rebounds:12,assists:12,steals:4,blocks:5,slam_dunks:5},
        {player_name:"Ben Gordon",number:8,shoe:15,points:33,rebounds:3,assists:2,steals:1,blocks:1,slam_dunks:0},
        {player_name:"Kemba Walker",number:33,shoe:15,points:6,rebounds:12,assists:12,steals:7,blocks:5,slam_dunks:12}]}}
end

def num_points_scored(name)

  game_hash.each do |home_or_away,team_stats|
    team_stats[:players].each do |inner|
      if name == inner[:player_name]
        return inner[:points]
       end
     end
   end
end

def shoe_size(name)
  game_hash.each do |home_or_away,team_stats|
    team_stats[:players].each do |inner|
      if name == inner[:player_name]
        return inner[:shoe]
       end
     end
   end
end

def team_colors(teamname)
  game_hash.each do |home_or_away,team_stats|
     if team_stats[:team_name] == teamname
      return team_stats[:colors]
     
  end
  end
end

def team_names
 array=[]
   game_hash.each do |home_or_away,team_stats|
      phrase = team_stats[:team_name]
      array << phrase
    end
    return array
end

def player_numbers(teamname)

new_array=[]

game_hash.each do |home_or_away,team_stats|
  if team_stats[:team_name] == teamname
      team_stats[:players].each do |inner|
         phrase = inner[:number]
         new_array << phrase
       end
     end
   end
   return new_array
end


def player_stats(name)

  game_hash.each do |home_or_away,stats|
    stats[:players].each do |more_info|
      if name == more_info[:player_name]
        more_info.delete(:player_name)
         return more_info
        
      end
    end
  end
end



 
 def big_shoe_rebounds
  bigshoesize=0
  rebounds=0
   game_hash.each do |home_or_away,stats|
    stats[:players].each do |more_info|
     if more_info[:shoe] > bigshoesize
       bigshoesize = more_info[:shoe]
       rebounds = more_info[:rebounds]
     end
    end
   end
  return rebounds
 end
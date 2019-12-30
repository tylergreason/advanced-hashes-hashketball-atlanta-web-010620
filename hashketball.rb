def game_hash()
  hash = {
    home:{
        team_name:"Brooklyn Nets",
        colors:["Black","White"],
        players:[
            {
            :player_name  => "Alan Anderson",
            :number => 0,
            :shoe => 16,
            :points => 22,
            :rebounds => 12,
            :assists => 12,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 1,
            },
            {
            :player_name  => "Reggie Evans",
            :number => 30,
            :shoe => 14,
            :points => 12,
            :rebounds => 12,
            :assists => 12,
            :steals => 12,
            :blocks => 12,
            :slam_dunks => 7
            },
            {
            :player_name  => "Brook Lopez",
            :number => 11,
            :shoe => 17,
            :points => 17,
            :rebounds => 19,
            :assists => 10,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 15
            },
            {
            :player_name  => "Mason Plumlee",
            :number => 1,
            :shoe => 19,
            :points => 26,
            :rebounds => 11,
            :assists => 6,
            :steals => 3,
            :blocks => 8,
            :slam_dunks => 5
            },
            {
            :player_name  => "Jason Terry",
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
    away:{
        team_name:"Charlotte Hornets",
        colors:["Turquoise", "Purple"],
        players:[
            {
            :player_name  => "Jeff Adrien",
            :number => 4,
            :shoe => 18,
            :points => 10,
            :rebounds => 1,
            :assists => 1,
            :steals => 2,
            :blocks => 7,
            :slam_dunks => 2
            },
            {
            :player_name  => "Bismack Biyombo",
            :number => 0,
            :shoe => 16,
            :points => 12,
            :rebounds => 4,
            :assists => 7,
            :steals => 22,
            :blocks => 15,
            :slam_dunks => 10
            },
            {
            :player_name  => "DeSagna Diop",
            :number => 2,
            :shoe => 14,
            :points => 24,
            :rebounds => 12,
            :assists => 12,
            :steals => 4,
            :blocks => 5,
            :slam_dunks => 5
            },
            {
            :player_name  => "Ben Gordon",
            :number => 8,
            :shoe => 15,
            :points => 33,
            :rebounds => 3,
            :assists => 2,
            :steals => 1,
            :blocks => 1,
            :slam_dunks => 0
            },
            {
            :player_name  => "Kemba Walker",
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

def num_points_scored(name) 
    # iterate through each value of game_hash ('home' and 'away')
    game_hash.each do |key,value| 
        # for each value with the hash key ':players': 
        value[:players].each do |player|
            # check to see if that player's name matches the argument given, and return data if it does 
            if player[:player_name].include?(name) 
                # put name and points for debugging purposes 
                puts player[:player_name]
                puts player[:points]
                return player[:points]
            end
        end
    end
end

def shoe_size(name)
    # iterate through each value of game_hash ('home' and 'away')
    game_hash.each do |key,value| 
        # for each value with the hash key ':players': 
        value[:players].each do |player|
            # check to see if that player's name matches the argument given, and return data if it does 
            if player[:player_name].include?(name) 
                # put name and points for debugging purposes 
                puts player[:player_name]
                puts player[:shoe]
                return player[:shoe]
            end
        end
    end    
end

def team_colors(team_name) 
    game_hash.each do |key,value|
        if value[:team_name] == team_name
            puts value[:team_name]
            puts value[:colors]
            return value[:colors]
        end
    end
end

def team_names()
  array = []
  game_hash.each do |key,value| 
    array << value[:team_name]
  end 
  pp array 
  return array 
end

def player_numbers(team_name) 
    array = []
    game_hash.each do |key,value| 
        # if a value with a hash key :team_name exists and matches the argument for the parameter team_name 
        if value[:team_name] == team_name 
            # for each value of that hash, iterate through each of its players and push their numbers to an array 
            value[:players].each do |players|
                array << players[:number]
            end
        end
    end
    # permanently sor the array and then return it 
    array.sort!  
    pp array 
    return array 
end

def player_stats(player_name) 
    hash = {}
    game_hash.each do |key,value| 
        value[:players].each do |player|
            # Find the player with the :player_name value that equals the player_name parameter
            if player[:player_name].include?(player_name) 
                # for each key of that player, if that key's name isn't :player_name, give that key/value pair to the hash we made at the beginning of this function 
                player.each do |key,value|
                    if key != :player_name
                        hash[key] = player[key]
                    end 
                end
            end
        end
    end
    # print (for debugging) then return the hash 
    pp hash 
    return hash 
end

def big_shoe_rebounds 
    array = []
    # go through each team's players and push their data to the array made above this line 
    game_hash.each do |key,value|
        value[:players].each do |player|
            array << player 
        end 
    end 
    # sort the player data by their shoe size (largest size last)
    array.sort_by! {
        |key| key[:shoe]
    }
    # return the rebounds of the player with the largest shoe size 
    return array[-1][:rebounds]
end

def most_points_scored 
    array = []
    # go through each team's players and push their data to the array made above this line 
    game_hash.each do |key,value|
        value[:players].each do |player|
            array << player 
        end 
    end 
    # sort the player data by points scored 
    array.sort_by! {
        |key| key[:points]
    }
    # return the rebounds of the player with the largest shoe size 
    return array[-1][:player_name]
end

def winning_team
    array = []
    # iterate through the values of game_hash (home, away) 
    game_hash.each do |key,value| 
        # make variables for the score that will be added to and the team name to identify who won 
        score = 0   
        team_name = 0 
        # iterate through each of the lists of players, add their scores together, set their team name to the team_name variable
            value[:players].each do |memo|
                    score += memo[:points]
                    team_name = value[:team_name]
                end
                # push the score and team names to the array we made in the form of a hash 
                array << {score:score,team_name:team_name} 
            end
            # sort the array by the score key so that the highes score is last 
            array.sort_by! {|key| key[:score]}
            # return the team name that has the highest score 
            return array[-1][:team_name]
end

def player_with_longest_name 
    # see method 'big_shoe_rebounds' for how this works 
    array = [] 
    game_hash.each do |k,v| 
        v[:players].each do |player|
            array << player 
        end
    end 
    array.sort_by! {|key| key[:player_name].length}
   return array[-1][:player_name]
end



def most_steals
    array = [] 
    game_hash.each do |k,v| 
        v[:players].each do |player|
            array << player 
        end
    end 
    array.sort_by! {|key| key[:steals]}
   return array[-1][:player_name]
end



def long_name_steals_a_ton?
 longest_name = player_with_longest_name() 
 most_steals_name = most_steals() 
 if longest_name == most_steals_name 
    
    return true 
 else return false 
 end 
end
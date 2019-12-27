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


# testing how to iterate through the game_hash NDS 
game_hash.each do |key,value|
    # puts value 
    value[:players].each do |player|
        # puts player
    end
end

<<<<<<< HEAD
=======

>>>>>>> 2588ccd3bba0a01d03a008c38c63eea333cb606a
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

<<<<<<< HEAD
=======

# test num_points_scored 
# num_points_scored("Kemba Walker")


>>>>>>> 2588ccd3bba0a01d03a008c38c63eea333cb606a
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

<<<<<<< HEAD
=======
# shoe_size("Kemba Walker")





>>>>>>> 2588ccd3bba0a01d03a008c38c63eea333cb606a
def team_colors(team_name) 
    game_hash.each do |key,value|
        if value[:team_name] == team_name
            puts value[:team_name]
            puts value[:colors]
            return value[:colors]
        end
    end
end

<<<<<<< HEAD
=======

# team_colors('Charlotte Hornets')


# * Build a method, `team_names`, that operates on the game `Hash` to return an `Array` of the team names.
>>>>>>> 2588ccd3bba0a01d03a008c38c63eea333cb606a
def team_names()
  array = []
  game_hash.each do |key,value| 
    array << value[:team_name]
  end 
  pp array 
  return array 
end

<<<<<<< HEAD
=======
# team_names()


# * Build a method, `player_numbers`, that takes in an argument of a team name and returns an `Array` of the jersey numbers for that team.
>>>>>>> 2588ccd3bba0a01d03a008c38c63eea333cb606a
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

<<<<<<< HEAD
=======
# player_numbers('Brooklyn Nets')






>>>>>>> 2588ccd3bba0a01d03a008c38c63eea333cb606a
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

# player_stats('Brook Lopez')

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
<<<<<<< HEAD
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


=======
end


# def winning_team 
#     winning_team_name = 0 
#     home_team_score = 0 
#     away_team_score = 0 
#     game_hash[:home][:players].each do |key,value|
#         home_team_score += key[:points]
#     end 
#     game_hash[:away][:players].each do |key,value|
#         away_team_score += key[:points]
#     end 
    
#     if home_team_score > away_team_score 
#         winning_team_name = game_hash[:home][:team_name]
#     else
#         winning_team_name = game_hash[:away][:team_name]
#     end
#     return winning_team_name
# end

# winning team tests 
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
>>>>>>> 2588ccd3bba0a01d03a008c38c63eea333cb606a

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
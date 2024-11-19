tellraw @a {"text": "Team Assigner loaded", "color": "#3295A8"}

# dummy list to store if teams already existed or not 0 if it did 1 if it was just made
scoreboard objectives add teams_exist dummy "Teams Exist"

# checks if the scoreboard Team already exists if not it creates it
execute store success score exist teams_exist run scoreboard objectives add teams dummy "Teams"

# sets up the team scores objective
scoreboard objectives add team_scores dummy "Team Scores"


function teams:add_score {team:"Blue",score:0}
function teams:add_score {team:"Red",score:0}

# adds imaginary blue player to blue and red to red team team for scoreboard colouring
team add blue "Blue"
team modify blue color blue
team join blue Blue

team add red "Red"
team modify red color red
team join red Red

team add green "Green"
team modify green color green
team join green Green

team add yellow "Yellow"
team modify yellow color yellow
team join yellow Yellow

# scoreboards for trigger commands
scoreboard objectives add check_team trigger "Check Team"
scoreboard objectives add show_scores trigger "Show Scores"

# sets the team names to be Red Blue Green And Yellow if the data does not already exist a.k.a default team names
execute unless data storage teams:types input run data modify storage teams:types input set value {values:[Red,Blue,Green,Yellow]}


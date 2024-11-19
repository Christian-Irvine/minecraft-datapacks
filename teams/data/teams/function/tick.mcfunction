function teams:check_new_player

# enables the triggers constantly so people can run the command
scoreboard players enable @a check_team
scoreboard players enable @a show_scores

# runs the functions if trigger has been called
execute as @a[scores={check_team=1..}] run function teams:check_team
execute as @a[scores={show_scores=1..}] run function teams:show_scores

# resets the scores to be 0 if its higher
scoreboard players reset @a[scores={check_team=1..}] check_team
scoreboard players reset @a[scores={show_scores=1..}] show_scores
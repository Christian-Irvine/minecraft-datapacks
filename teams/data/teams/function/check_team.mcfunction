#tellraw @s ["You are on team ",{"score":{"name":"@s","objective":"teams"}}]

execute store result storage teams:temp_index input int 1 run scoreboard players get @s teams

execute as @s run function teams:say_team with storage teams:temp_index
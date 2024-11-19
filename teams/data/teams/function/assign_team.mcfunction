execute as @s store result score @s teams run random value 0..1

execute as @a run tellraw @a ["", {"selector":"@s","color":"#3295A8"}, " was assigned a team"]

execute as @s run function teams:check_team
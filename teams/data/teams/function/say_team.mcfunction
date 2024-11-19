$data modify storage teams:temp_name input set from storage teams:types input.values[$(input)]

tellraw @s ["","You are on team ",{"nbt":"input","storage":"teams:temp_name"}]

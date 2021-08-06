execute as @s at @s run tp @s ~ ~1 ~
execute as @s at @s unless block ~ ~-1 ~ #sixfold:ray_step if block ~ ~ ~ #sixfold:ray_step if block ~ ~1 ~ #sixfold:ray_step run tag @s add grounded
scoreboard players set @e[tag=grounded] count 5
scoreboard players add @s count 1
execute as @s unless score @s count matches 3.. run function sixfold:raycast_ascend
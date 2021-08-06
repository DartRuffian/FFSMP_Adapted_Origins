execute as @s at @s if block ~ ~ ~ #botworigins:ray_step run tp @s ^ ^ ^0.5
execute as @s at @s unless block ~ ~ ~ #botworigins:ray_step run scoreboard players set @s count 50
scoreboard players add @s count 1
execute as @s unless score @s count matches 50.. run function botworigins:raycast_step
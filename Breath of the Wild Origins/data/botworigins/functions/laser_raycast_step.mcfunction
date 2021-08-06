execute as @s at @s if block ^ ^ ^0.5 #botworigins:ray_step_water run tp @s ^ ^ ^0.5
execute as @s at @s unless block ^ ^ ^0.5 #botworigins:ray_step_water run scoreboard players set @s count 49
execute as @s at @s as @e[type=!armor_stand,type=!item,type=!item_frame,type=!leash_knot,type=!#minecraft:arrows,type=!boat,type=!minecart,type=!eye_of_ender,type=!experience_orb,type=!falling_block,distance=..1.5,tag=!caster,tag=!ray] as @e[tag=ray,sort=nearest,limit=1] run scoreboard players set @s count 52
execute as @s at @s as @e[type=!armor_stand,type=!item,type=!item_frame,type=!leash_knot,type=!#minecraft:arrows,type=!boat,type=!minecart,type=!eye_of_ender,type=!experience_orb,type=!falling_block,distance=..1.5,tag=!caster,tag=!ray] run tag @s add target
scoreboard players add @s count 1
execute as @s at @s run particle minecraft:end_rod ~ ~ ~ 0.001 0.001 0.001 0.01 100 normal @p
execute as @s if score @s count matches 50 run tag @s add target
execute as @s unless score @s count matches 50.. run function botworigins:laser_raycast_step
tag @s add caster
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ray1"],Invisible:1b,Small:1b}
execute at @s as @e[tag=ray1,sort=nearest,limit=1] run tp @s ~ ~1.3 ~ ~ ~
execute as @e[tag=ray1,sort=nearest,limit=1] at @s run function botworigins:laser_raycast_step
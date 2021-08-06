tag @s add caster
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ray"],Invisible:1b,Small:1b}
execute at @s as @e[tag=ray,sort=nearest,limit=1] run tp @s ~ ~1.3 ~ ~ ~
execute as @e[tag=ray,sort=nearest,limit=1] at @s run function botworigins:raycast_step